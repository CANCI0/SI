(define (domain typed-blocksworld)

    (:requirements :fluents :typing)

    (:types
        block hand table
    )
    (:functions
        (weight-moved)
        (block-weight ?b - block)
        (shift-cost ?h - hand ?t1 ?t2 - table)
        (shift-total-cost)
    )

    (:predicates
        (clear ?b - block)
        (on-table ?b - block ?t - table)
        (empty ?h - hand)
        (holding ?h - hand ?b - block)
        (on ?b1 ?b2 - block)
        (over-table ?h - hand ?t - table)
        (stacked-on-table ?b -block ?t -table)
    )

    (:action pickup
        :parameters (?h - hand ?b - block ?t - table)
        :precondition (and
            (clear ?b)
            (on-table ?b ?t)
            (over-table ?h ?t)
            (empty ?h)
        )
        :effect (and
            (holding ?h ?b)
            (not (clear ?b))
            (not (on-table ?b ?t))
            (not (empty ?h))
            (increase (weight-moved) (block-weight ?b))
        )
    )

    (:action putdown
        :parameters (?h - hand ?b - block ?t - table)
        :precondition (and (holding ?h ?b) (over-table ?h ?t))
        :effect (and
            (clear ?b)
            (empty ?h)
            (stacked-on-table ?b ?t)
            (on-table ?b ?t)
            (not (holding ?h ?b))
        )
    )

    (:action stack
        :parameters (?h - hand ?b ?underb - block ?t - table)
        :precondition (and
            (over-table ?h ?t)
            (clear ?underb)
            (holding ?h ?b)
        )
        :effect (and
            (empty ?h)
            (clear ?b)
            (on ?b ?underb)
            (stacked-on-table ?b ?t)
            (not (clear ?underb))
            (not (holding ?h ?b))
        )
    )

    (:action unstack
        :parameters (?h - hand ?b ?underb - block ?t - table)
        :precondition (and
            (over-table ?h ?t)
            (on ?b ?underb)
            (clear ?b)
            (empty ?h)
            (stacked-on-table ?b ?t)
            (on-table ?b ?t)
            (on-table ?underb ?t)
        )
        :effect (and
            (holding ?h ?b)
            (clear ?underb)
            (not (on ?b ?underb))
            (not (clear ?b))
            (not (empty ?h))
            (increase (weight-moved) (block-weight ?b))
        )
    )
    (:action shift-hand
        :parameters (?h - hand ?t1 - table ?t2 - table)
        :precondition(and
            (over-table ?h ?t1)
            (not (over-table ?h ?t2))
        )
        :effect (and
            (not (over-table ?h ?t1))
            (over-table ?h ?t2)
            (increase
                (shift-total-cost)
                (shift-cost ?h ?t1 ?t2)
            )
        )
    )
)