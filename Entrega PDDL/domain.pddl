(define (domain tsp)
    (:requirements :typing :fluents)
    (:types
        city
    )   
    (:predicates
        (initial ?c - city)
        (actual ?c - city)
        (visited ?c - city)
    )
    (:functions
        (travel-cost ?c1 - city ?c2 - city)
        (total-travel-cost-moved )
    )
    (:action visit
        :parameters (?c1 - city ?c2 - city)
        :precondition (and 
            (not (= ?c1 ?c2))
            (actual ?c1)
            (not (visited ?c2))
            (not (initial ?c2))
        )
        :effect (and 
            (actual ?c2)
            (not (actual ?c1))
            (visited ?c2)
            (increase (total-travel-cost-moved) (travel-cost ?c1 ?c2))
        )
    )
    (:action visit-and-end
        :parameters (?c1 - city ?c2 - city)
        :precondition (and 
            (not (= ?c1 ?c2))
            (actual ?c1)
            (initial ?c2)
            (forall (?c - city) (or (visited ?c)))
        )
        :effect (and 
            (actual ?c2)
            (not (actual ?c1))
            (visited ?c2)
            (increase (total-travel-cost-moved) (travel-cost ?c1 ?c2))
        )
    )
)