package es.uniovi.ssii.rb;

import java.io.FileInputStream;
import java.util.*;

import org.openmarkov.core.exception.IncompatibleEvidenceException;
import org.openmarkov.core.exception.NotEvaluableNetworkException;
import org.openmarkov.core.model.network.EvidenceCase;
import org.openmarkov.core.model.network.Finding;
import org.openmarkov.core.model.network.ProbNet;
import org.openmarkov.core.model.network.Variable;
import org.openmarkov.core.model.network.potential.TablePotential;
import org.openmarkov.inference.variableElimination.tasks.VEPropagation;
import org.openmarkov.io.probmodel.reader.PGMXReader_0_2;

public class ProbQuery {

    private ProbNet probNet;
    private Long seed;
    private Random rnd;

    public ProbQuery(String fileName) throws Exception {
        String path = "src/main/resources/networks/" + fileName;
        PGMXReader_0_2 pgmxReader = new PGMXReader_0_2();
        probNet = pgmxReader.loadProbNet(fileName, new FileInputStream(path));
        seed = null;
        rnd = new Random();
    }

    public long VEInference(List<Variable> variablesOfInterest, EvidenceCase evidence) {

        VEPropagation propagation = null;
        try {
            propagation = new VEPropagation(probNet);
        } catch (NotEvaluableNetworkException e) {
            e.printStackTrace();
        }
        propagation.setVariablesOfInterest(variablesOfInterest);

        propagation.setPostResolutionEvidence(evidence);

        System.out.print("Variable elimination\n");
        long startTime = System.nanoTime();
        try {
            Map<Variable, TablePotential> posteriorProbabilities = propagation.getPosteriorValues();
            printProbabilities(evidence, variablesOfInterest, posteriorProbabilities);

        } catch (IncompatibleEvidenceException | NotEvaluableNetworkException e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        long endTime = System.nanoTime();

        printTime(endTime - startTime);

        return (endTime - startTime);
    }

    public static void printProbabilities(EvidenceCase evidence, List<Variable> variablesOfInterest,
                                          Map<Variable, TablePotential> posteriorProbabilities) {
        String evidenceString = "";
        for (Finding finding : evidence.getFindings()) {
            evidenceString += " " + finding.getVariable() + "=" + finding.getState();
        }

        for (Variable variable : variablesOfInterest) {
            TablePotential posteriorProbabilitiesPotential = posteriorProbabilities.get(variable);
            System.out.format("P( %s=%s | %s) = %.5f\n", variable, variable.getStates()[0].getName(), evidenceString,
                    posteriorProbabilitiesPotential.values[0]);
        }
    }

    public static void printTime(long nanoseconds) {
        System.out.format("Total time: %.2f miliseconds\n", nanoseconds / 1000000.0);
    }

    public ProbNet getProbNet() {
        return probNet;
    }

    public void setProbNet(ProbNet probNet) {
        this.probNet = probNet;
    }

    public Long getSeed() {
        return seed;
    }

    public void setSeed(Long seed) {
        this.seed = seed;
        rnd.setSeed(seed);
    }

    public double DoInference(List<Variable> variablesOfInterest, EvidenceCase evidence) {
        Map<Variable, TablePotential> posteriorProbabilities = null;
        VEPropagation propagation = null;
        try {
            propagation = new VEPropagation(probNet);
        } catch (NotEvaluableNetworkException e) {
            e.printStackTrace();
        }
        propagation.setVariablesOfInterest(variablesOfInterest);

        propagation.setPostResolutionEvidence(evidence);

        System.out.print("Variable elimination\n");
        long startTime = System.nanoTime();
        try {
            posteriorProbabilities = propagation.getPosteriorValues();
            printProbabilities(evidence, variablesOfInterest, posteriorProbabilities);

        } catch (IncompatibleEvidenceException | NotEvaluableNetworkException e) {
            e.printStackTrace();
        } catch (OutOfMemoryError e) {
            e.printStackTrace();
        }
        // the variable of interest for the given evidence

        return getProbability(evidence, variablesOfInterest, posteriorProbabilities);
    }

    /**
     * This method assumes that there is only one variable of interest, i.e. the
     * list has only one element. It will extract the probability of that variable
     * and return it
     *
     * @param evidence
     * @param variablesOfInterest
     * @param posteriorProbabilities
     */
    private static double getProbability(EvidenceCase evidence, List<Variable> variablesOfInterest,
                                         Map<Variable, TablePotential> posteriorProbabilities) {

        Variable variable = variablesOfInterest.get(0);
        TablePotential posteriorProbabilitiesPotential = posteriorProbabilities.get(variable);
        return posteriorProbabilitiesPotential.values[0];

    }

    public static void main(String[] args) throws Exception {

        ProbQuery obj = new ProbQuery("asia.pgmx");

        EvidenceCase evidence = new EvidenceCase();
        evidence.addFinding(obj.probNet, "Has tuberculosis", "yes");
        evidence.addFinding(obj.probNet, "Positive X-ray?", "no");

        List<Variable> variablesOfInterest = new ArrayList<Variable>();
        variablesOfInterest = Collections.singletonList(obj.probNet.getVariable("Visit to Asia?"));

        System.out.format("%f", obj.DoInference(variablesOfInterest, evidence));

    }

}