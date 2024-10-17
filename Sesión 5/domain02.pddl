(define (domain blocksword)
    (:requirements :equality)
    (:predicates
        (sin_nada_encima ?x)
        (encima_mesa ?x)
        (encima_bloque ?x ?y)
    )
    (:action apilar
        :parameters (?ob ?underob)
        :precondition (and (not (= ?ob ?underob)) (sin_nada_encima ?underob) (sin_nada_encima ?ob) (not (encima_bloque ?ob ?underob)) (not (encima_bloque ?underob ?ob)) (encima_mesa ?ob))
        :effect (and (encima_bloque ?ob ?underob) (not (sin_nada_encima ?underob)) (not(encima_mesa ?ob)))
    )
    (:action desapilar
        :parameters (?ob ?underob)
        :precondition (and (not (= ?ob ?underob)) (encima_bloque ?ob ?underob) (sin_nada_encima ?ob))
        :effect (and (sin_nada_encima ?underob) (not (encima_bloque ?ob ?underob)) (encima_mesa ?ob))
    )
    (:action mover
        :parameters (?ob ?underob ?obj)
        :precondition(and ((encima_bloque ?ob ?underob) (sin_nada_encima ?ob) (sin_nada_encima ?obj)))
        :effect( and((not(encima_bloque ?ob ?underob)) (sin_nada_encima ?underob) (encima_bloque ?ob ?obj) (not(sin_nada_encima ?obj))) )
    )
)