(define
	(problem problemTSP)
	(
		:domain tsp
	)
	(:objects
		c0 c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 c11 c12 c13 c14 c15 c16 c17 c18 c19 c20 - city
	)
	(:init
		(= (travel-cost c0 c1) 510)
		(= (travel-cost c1 c0) 510)
		(= (travel-cost c0 c2) 635)
		(= (travel-cost c2 c0) 635)
		(= (travel-cost c1 c2) 355)
		(= (travel-cost c2 c1) 355)
		(= (travel-cost c0 c3) 91)
		(= (travel-cost c3 c0) 91)
		(= (travel-cost c1 c3) 415)
		(= (travel-cost c3 c1) 415)
		(= (travel-cost c2 c3) 605)
		(= (travel-cost c3 c2) 605)
		(= (travel-cost c0 c4) 385)
		(= (travel-cost c4 c0) 385)
		(= (travel-cost c1 c4) 585)
		(= (travel-cost c4 c1) 585)
		(= (travel-cost c2 c4) 390)
		(= (travel-cost c4 c2) 390)
		(= (travel-cost c3 c4) 350)
		(= (travel-cost c4 c3) 350)
		(= (travel-cost c0 c5) 155)
		(= (travel-cost c5 c0) 155)
		(= (travel-cost c1 c5) 475)
		(= (travel-cost c5 c1) 475)
		(= (travel-cost c2 c5) 495)
		(= (travel-cost c5 c2) 495)
		(= (travel-cost c3 c5) 120)
		(= (travel-cost c5 c3) 120)
		(= (travel-cost c4 c5) 240)
		(= (travel-cost c5 c4) 240)
		(= (travel-cost c0 c6) 110)
		(= (travel-cost c6 c0) 110)
		(= (travel-cost c1 c6) 480)
		(= (travel-cost c6 c1) 480)
		(= (travel-cost c2 c6) 570)
		(= (travel-cost c6 c2) 570)
		(= (travel-cost c3 c6) 78)
		(= (travel-cost c6 c3) 78)
		(= (travel-cost c4 c6) 320)
		(= (travel-cost c6 c4) 320)
		(= (travel-cost c5 c6) 96)
		(= (travel-cost c6 c5) 96)
		(= (travel-cost c0 c7) 130)
		(= (travel-cost c7 c0) 130)
		(= (travel-cost c1 c7) 500)
		(= (travel-cost c7 c1) 500)
		(= (travel-cost c2 c7) 540)
		(= (travel-cost c7 c2) 540)
		(= (travel-cost c3 c7) 97)
		(= (travel-cost c7 c3) 97)
		(= (travel-cost c4 c7) 285)
		(= (travel-cost c7 c4) 285)
		(= (travel-cost c5 c7) 36)
		(= (travel-cost c7 c5) 36)
		(= (travel-cost c6 c7) 29)
		(= (travel-cost c7 c6) 29)
		(= (travel-cost c0 c8) 490)
		(= (travel-cost c8 c0) 490)
		(= (travel-cost c1 c8) 605)
		(= (travel-cost c8 c1) 605)
		(= (travel-cost c2 c8) 295)
		(= (travel-cost c8 c2) 295)
		(= (travel-cost c3 c8) 460)
		(= (travel-cost c8 c3) 460)
		(= (travel-cost c4 c8) 120)
		(= (travel-cost c8 c4) 120)
		(= (travel-cost c5 c8) 350)
		(= (travel-cost c8 c5) 350)
		(= (travel-cost c6 c8) 425)
		(= (travel-cost c8 c6) 425)
		(= (travel-cost c7 c8) 390)
		(= (travel-cost c8 c7) 390)
		(= (travel-cost c0 c9) 370)
		(= (travel-cost c9 c0) 370)
		(= (travel-cost c1 c9) 320)
		(= (travel-cost c9 c1) 320)
		(= (travel-cost c2 c9) 700)
		(= (travel-cost c9 c2) 700)
		(= (travel-cost c3 c9) 280)
		(= (travel-cost c9 c3) 280)
		(= (travel-cost c4 c9) 590)
		(= (travel-cost c9 c4) 590)
		(= (travel-cost c5 c9) 365)
		(= (travel-cost c9 c5) 365)
		(= (travel-cost c6 c9) 350)
		(= (travel-cost c9 c6) 350)
		(= (travel-cost c7 c9) 370)
		(= (travel-cost c9 c7) 370)
		(= (travel-cost c8 c9) 625)
		(= (travel-cost c9 c8) 625)
		(= (travel-cost c0 c10) 155)
		(= (travel-cost c10 c0) 155)
		(= (travel-cost c1 c10) 380)
		(= (travel-cost c10 c1) 380)
		(= (travel-cost c2 c10) 640)
		(= (travel-cost c10 c2) 640)
		(= (travel-cost c3 c10) 63)
		(= (travel-cost c10 c3) 63)
		(= (travel-cost c4 c10) 430)
		(= (travel-cost c10 c4) 430)
		(= (travel-cost c5 c10) 200)
		(= (travel-cost c10 c5) 200)
		(= (travel-cost c6 c10) 160)
		(= (travel-cost c10 c6) 160)
		(= (travel-cost c7 c10) 175)
		(= (travel-cost c10 c7) 175)
		(= (travel-cost c8 c10) 535)
		(= (travel-cost c10 c8) 535)
		(= (travel-cost c9 c10) 240)
		(= (travel-cost c10 c9) 240)
		(= (travel-cost c0 c11) 68)
		(= (travel-cost c11 c0) 68)
		(= (travel-cost c1 c11) 440)
		(= (travel-cost c11 c1) 440)
		(= (travel-cost c2 c11) 575)
		(= (travel-cost c11 c2) 575)
		(= (travel-cost c3 c11) 27)
		(= (travel-cost c11 c3) 27)
		(= (travel-cost c4 c11) 320)
		(= (travel-cost c11 c4) 320)
		(= (travel-cost c5 c11) 91)
		(= (travel-cost c11 c5) 91)
		(= (travel-cost c6 c11) 48)
		(= (travel-cost c11 c6) 48)
		(= (travel-cost c7 c11) 67)
		(= (travel-cost c11 c7) 67)
		(= (travel-cost c8 c11) 430)
		(= (travel-cost c11 c8) 430)
		(= (travel-cost c9 c11) 300)
		(= (travel-cost c11 c9) 300)
		(= (travel-cost c10 c11) 90)
		(= (travel-cost c11 c10) 90)
		(= (travel-cost c0 c12) 610)
		(= (travel-cost c12 c0) 610)
		(= (travel-cost c1 c12) 360)
		(= (travel-cost c12 c1) 360)
		(= (travel-cost c2 c12) 705)
		(= (travel-cost c12 c2) 705)
		(= (travel-cost c3 c12) 520)
		(= (travel-cost c12 c3) 520)
		(= (travel-cost c4 c12) 835)
		(= (travel-cost c12 c4) 835)
		(= (travel-cost c5 c12) 605)
		(= (travel-cost c12 c5) 605)
		(= (travel-cost c6 c12) 590)
		(= (travel-cost c12 c6) 590)
		(= (travel-cost c7 c12) 610)
		(= (travel-cost c12 c7) 610)
		(= (travel-cost c8 c12) 865)
		(= (travel-cost c12 c8) 865)
		(= (travel-cost c9 c12) 250)
		(= (travel-cost c12 c9) 250)
		(= (travel-cost c10 c12) 480)
		(= (travel-cost c12 c10) 480)
		(= (travel-cost c11 c12) 545)
		(= (travel-cost c12 c11) 545)
		(= (travel-cost c0 c13) 655)
		(= (travel-cost c13 c0) 655)
		(= (travel-cost c1 c13) 235)
		(= (travel-cost c13 c1) 235)
		(= (travel-cost c2 c13) 585)
		(= (travel-cost c13 c2) 585)
		(= (travel-cost c3 c13) 555)
		(= (travel-cost c13 c3) 555)
		(= (travel-cost c4 c13) 750)
		(= (travel-cost c13 c4) 750)
		(= (travel-cost c5 c13) 615)
		(= (travel-cost c13 c5) 615)
		(= (travel-cost c6 c13) 625)
		(= (travel-cost c13 c6) 625)
		(= (travel-cost c7 c13) 645)
		(= (travel-cost c13 c7) 645)
		(= (travel-cost c8 c13) 775)
		(= (travel-cost c13 c8) 775)
		(= (travel-cost c9 c13) 285)
		(= (travel-cost c13 c9) 285)
		(= (travel-cost c10 c13) 515)
		(= (travel-cost c13 c10) 515)
		(= (travel-cost c11 c13) 585)
		(= (travel-cost c13 c11) 585)
		(= (travel-cost c12 c13) 190)
		(= (travel-cost c13 c12) 190)
		(= (travel-cost c0 c14) 480)
		(= (travel-cost c14 c0) 480)
		(= (travel-cost c1 c14) 81)
		(= (travel-cost c14 c1) 81)
		(= (travel-cost c2 c14) 435)
		(= (travel-cost c14 c2) 435)
		(= (travel-cost c3 c14) 380)
		(= (travel-cost c14 c3) 380)
		(= (travel-cost c4 c14) 575)
		(= (travel-cost c14 c4) 575)
		(= (travel-cost c5 c14) 440)
		(= (travel-cost c14 c5) 440)
		(= (travel-cost c6 c14) 455)
		(= (travel-cost c14 c6) 455)
		(= (travel-cost c7 c14) 465)
		(= (travel-cost c14 c7) 465)
		(= (travel-cost c8 c14) 600)
		(= (travel-cost c14 c8) 600)
		(= (travel-cost c9 c14) 245)
		(= (travel-cost c14 c9) 245)
		(= (travel-cost c10 c14) 345)
		(= (travel-cost c14 c10) 345)
		(= (travel-cost c11 c14) 415)
		(= (travel-cost c14 c11) 415)
		(= (travel-cost c12 c14) 295)
		(= (travel-cost c14 c12) 295)
		(= (travel-cost c13 c14) 170)
		(= (travel-cost c14 c13) 170)
		(= (travel-cost c0 c15) 265)
		(= (travel-cost c15 c0) 265)
		(= (travel-cost c1 c15) 480)
		(= (travel-cost c15 c1) 480)
		(= (travel-cost c2 c15) 420)
		(= (travel-cost c15 c2) 420)
		(= (travel-cost c3 c15) 235)
		(= (travel-cost c15 c3) 235)
		(= (travel-cost c4 c15) 125)
		(= (travel-cost c15 c4) 125)
		(= (travel-cost c5 c15) 125)
		(= (travel-cost c15 c5) 125)
		(= (travel-cost c6 c15) 200)
		(= (travel-cost c15 c6) 200)
		(= (travel-cost c7 c15) 165)
		(= (travel-cost c15 c7) 165)
		(= (travel-cost c8 c15) 230)
		(= (travel-cost c15 c8) 230)
		(= (travel-cost c9 c15) 475)
		(= (travel-cost c15 c9) 475)
		(= (travel-cost c10 c15) 310)
		(= (travel-cost c15 c10) 310)
		(= (travel-cost c11 c15) 205)
		(= (travel-cost c15 c11) 205)
		(= (travel-cost c12 c15) 715)
		(= (travel-cost c15 c12) 715)
		(= (travel-cost c13 c15) 650)
		(= (travel-cost c15 c13) 650)
		(= (travel-cost c14 c15) 475)
		(= (travel-cost c15 c14) 475)
		(= (travel-cost c0 c16) 255)
		(= (travel-cost c16 c0) 255)
		(= (travel-cost c1 c16) 440)
		(= (travel-cost c16 c1) 440)
		(= (travel-cost c2 c16) 755)
		(= (travel-cost c16 c2) 755)
		(= (travel-cost c3 c16) 235)
		(= (travel-cost c16 c3) 235)
		(= (travel-cost c4 c16) 650)
		(= (travel-cost c16 c4) 650)
		(= (travel-cost c5 c16) 370)
		(= (travel-cost c16 c5) 370)
		(= (travel-cost c6 c16) 320)
		(= (travel-cost c16 c6) 320)
		(= (travel-cost c7 c16) 350)
		(= (travel-cost c16 c7) 350)
		(= (travel-cost c8 c16) 680)
		(= (travel-cost c16 c8) 680)
		(= (travel-cost c9 c16) 150)
		(= (travel-cost c16 c9) 150)
		(= (travel-cost c10 c16) 175)
		(= (travel-cost c16 c10) 175)
		(= (travel-cost c11 c16) 265)
		(= (travel-cost c16 c11) 265)
		(= (travel-cost c12 c16) 400)
		(= (travel-cost c16 c12) 400)
		(= (travel-cost c13 c16) 435)
		(= (travel-cost c16 c13) 435)
		(= (travel-cost c14 c16) 385)
		(= (travel-cost c16 c14) 385)
		(= (travel-cost c15 c16) 485)
		(= (travel-cost c16 c15) 485)
		(= (travel-cost c0 c17) 450)
		(= (travel-cost c17 c0) 450)
		(= (travel-cost c1 c17) 270)
		(= (travel-cost c17 c1) 270)
		(= (travel-cost c2 c17) 625)
		(= (travel-cost c17 c2) 625)
		(= (travel-cost c3 c17) 345)
		(= (travel-cost c17 c3) 345)
		(= (travel-cost c4 c17) 660)
		(= (travel-cost c17 c4) 660)
		(= (travel-cost c5 c17) 430)
		(= (travel-cost c17 c5) 430)
		(= (travel-cost c6 c17) 420)
		(= (travel-cost c17 c6) 420)
		(= (travel-cost c7 c17) 440)
		(= (travel-cost c17 c7) 440)
		(= (travel-cost c8 c17) 690)
		(= (travel-cost c17 c8) 690)
		(= (travel-cost c9 c17) 77)
		(= (travel-cost c17 c9) 77)
		(= (travel-cost c10 c17) 310)
		(= (travel-cost c17 c10) 310)
		(= (travel-cost c11 c17) 380)
		(= (travel-cost c17 c11) 380)
		(= (travel-cost c12 c17) 180)
		(= (travel-cost c17 c12) 180)
		(= (travel-cost c13 c17) 215)
		(= (travel-cost c17 c13) 215)
		(= (travel-cost c14 c17) 190)
		(= (travel-cost c17 c14) 190)
		(= (travel-cost c15 c17) 545)
		(= (travel-cost c17 c15) 545)
		(= (travel-cost c16 c17) 225)
		(= (travel-cost c17 c16) 225)
		(= (travel-cost c0 c18) 170)
		(= (travel-cost c18 c0) 170)
		(= (travel-cost c1 c18) 445)
		(= (travel-cost c18 c1) 445)
		(= (travel-cost c2 c18) 750)
		(= (travel-cost c18 c2) 750)
		(= (travel-cost c3 c18) 160)
		(= (travel-cost c18 c3) 160)
		(= (travel-cost c4 c18) 495)
		(= (travel-cost c18 c4) 495)
		(= (travel-cost c5 c18) 265)
		(= (travel-cost c18 c5) 265)
		(= (travel-cost c6 c18) 220)
		(= (travel-cost c18 c6) 220)
		(= (travel-cost c7 c18) 240)
		(= (travel-cost c18 c7) 240)
		(= (travel-cost c8 c18) 600)
		(= (travel-cost c18 c8) 600)
		(= (travel-cost c9 c18) 235)
		(= (travel-cost c18 c9) 235)
		(= (travel-cost c10 c18) 125)
		(= (travel-cost c18 c10) 125)
		(= (travel-cost c11 c18) 170)
		(= (travel-cost c18 c11) 170)
		(= (travel-cost c12 c18) 485)
		(= (travel-cost c18 c12) 485)
		(= (travel-cost c13 c18) 525)
		(= (travel-cost c18 c13) 525)
		(= (travel-cost c14 c18) 405)
		(= (travel-cost c18 c14) 405)
		(= (travel-cost c15 c18) 375)
		(= (travel-cost c18 c15) 375)
		(= (travel-cost c16 c18) 87)
		(= (travel-cost c18 c16) 87)
		(= (travel-cost c17 c18) 315)
		(= (travel-cost c18 c17) 315)
		(= (travel-cost c0 c19) 240)
		(= (travel-cost c19 c0) 240)
		(= (travel-cost c1 c19) 290)
		(= (travel-cost c19 c1) 290)
		(= (travel-cost c2 c19) 590)
		(= (travel-cost c19 c2) 590)
		(= (travel-cost c3 c19) 140)
		(= (travel-cost c19 c3) 140)
		(= (travel-cost c4 c19) 480)
		(= (travel-cost c19 c4) 480)
		(= (travel-cost c5 c19) 255)
		(= (travel-cost c19 c5) 255)
		(= (travel-cost c6 c19) 205)
		(= (travel-cost c19 c6) 205)
		(= (travel-cost c7 c19) 220)
		(= (travel-cost c19 c7) 220)
		(= (travel-cost c8 c19) 515)
		(= (travel-cost c19 c8) 515)
		(= (travel-cost c9 c19) 150)
		(= (travel-cost c19 c9) 150)
		(= (travel-cost c10 c19) 100)
		(= (travel-cost c19 c10) 100)
		(= (travel-cost c11 c19) 170)
		(= (travel-cost c19 c11) 170)
		(= (travel-cost c12 c19) 390)
		(= (travel-cost c19 c12) 390)
		(= (travel-cost c13 c19) 425)
		(= (travel-cost c19 c13) 425)
		(= (travel-cost c14 c19) 255)
		(= (travel-cost c19 c14) 255)
		(= (travel-cost c15 c19) 395)
		(= (travel-cost c19 c15) 395)
		(= (travel-cost c16 c19) 205)
		(= (travel-cost c19 c16) 205)
		(= (travel-cost c17 c19) 220)
		(= (travel-cost c19 c17) 220)
		(= (travel-cost c18 c19) 155)
		(= (travel-cost c19 c18) 155)
		(= (travel-cost c0 c20) 380)
		(= (travel-cost c20 c0) 380)
		(= (travel-cost c1 c20) 140)
		(= (travel-cost c20 c1) 140)
		(= (travel-cost c2 c20) 495)
		(= (travel-cost c20 c2) 495)
		(= (travel-cost c3 c20) 280)
		(= (travel-cost c20 c3) 280)
		(= (travel-cost c4 c20) 480)
		(= (travel-cost c20 c4) 480)
		(= (travel-cost c5 c20) 340)
		(= (travel-cost c20 c5) 340)
		(= (travel-cost c6 c20) 350)
		(= (travel-cost c20 c6) 350)
		(= (travel-cost c7 c20) 370)
		(= (travel-cost c20 c7) 370)
		(= (travel-cost c8 c20) 505)
		(= (travel-cost c20 c8) 505)
		(= (travel-cost c9 c20) 185)
		(= (travel-cost c20 c9) 185)
		(= (travel-cost c10 c20) 240)
		(= (travel-cost c20 c10) 240)
		(= (travel-cost c11 c20) 310)
		(= (travel-cost c20 c11) 310)
		(= (travel-cost c12 c20) 345)
		(= (travel-cost c20 c12) 345)
		(= (travel-cost c13 c20) 280)
		(= (travel-cost c20 c13) 280)
		(= (travel-cost c14 c20) 105)
		(= (travel-cost c20 c14) 105)
		(= (travel-cost c15 c20) 380)
		(= (travel-cost c20 c15) 380)
		(= (travel-cost c16 c20) 280)
		(= (travel-cost c20 c16) 280)
		(= (travel-cost c17 c20) 165)
		(= (travel-cost c20 c17) 165)
		(= (travel-cost c18 c20) 305)
		(= (travel-cost c20 c18) 305)
		(= (travel-cost c19 c20) 150)
		(= (travel-cost c20 c19) 150)

		(actual c0)
		(initial c0)
		(visited c0)
	)
	(:goal
		(and
			(visited c1)
			(visited c2)
			(visited c3)
			(visited c4)
			(visited c5)
			(visited c6)
			(visited c7)
			(visited c8)
			(visited c9)
			(visited c10)
			(visited c11)
			(visited c12)
			(visited c13)
			(visited c14)
			(visited c15)
			(visited c16)
			(visited c17)
			(visited c18)
			(visited c19)
			(visited c20)
			(actual c0)
		)
	)
	(:metric minimize (total-travel-cost-moved ))
)