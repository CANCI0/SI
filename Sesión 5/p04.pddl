(define (problem p01)
    (:domain typed-blocksworld) ; mismo nombre de dominio
    (:objects
        a b c d e - block

        h1 h2 - hand
        t1 t2 t3 -table
    )

    (:init
        (= (block-weight a) 1)
        (= (block-weight b) 2)
        (= (block-weight c) 3)
        (= (block-weight d) 4)
        (= (block-weight e) 5)

        (= (shift-cost h1 t1 t2) 5)
        (= (shift-cost h1 t2 t1) 5)
        (= (shift-cost h1 t2 t3) 10)
        (= (shift-cost h1 t3 t2) 10)
        (= (shift-cost h1 t1 t3) 15)
        (= (shift-cost h1 t3 t1) 15)

        (= (shift-cost h2 t1 t2) 10)
        (= (shift-cost h2 t2 t1) 10)
        (= (shift-cost h2 t2 t3) 5)
        (= (shift-cost h2 t3 t2) 5)
        (= (shift-cost h2 t1 t3) 15)
        (= (shift-cost h2 t3 t1) 15)

        (on-table b t2)
        (on a b)
        (clear a)
        (stacked-on-table a t2)

        (on-table e t1)
        (on d e)
        (stacked-on-table d t1)
        (on c d)
        (stacked-on-table c t1)
        (clear c)

        (empty h1)
        (over-table h1 t1)
        (empty h2)
        (over-table h1 t2)

    )

    (:goal
        (and
            (on-table b t3)
            (on a b)
            (clear a)
            (on-table e t3)
            (on d e)
            (on c d)
            (clear c)
        )
    )

    (:metric minimize
        (+ (weight-moved) (shift-total-cost))

    )
)