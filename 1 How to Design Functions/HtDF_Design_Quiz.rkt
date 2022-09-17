;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname HtDF_Design_Quiz) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;; TASK: Design a function that consumes two images and produces true if the first is larger than the second.

;; Images -> Boolean
;; Takes two images and returns true is the first image has a larger area than the second image

(check-expect (isLarger? (rectangle 3 5 "solid" "black") (rectangle 2 7 "solid" "black")) true)
(check-expect (isLarger? (rectangle 4 4 "solid" "black") (rectangle 8 2 "solid" "black")) false)
(check-expect (isLarger? (rectangle 2 3 "solid" "black") (rectangle 6 7 "solid" "black")) false)

;; (define (imageArea image) 
;;  (* heigth width)))
;; (define (isLarger? image1 image2) 
;;  (...))

(define (imageArea image)
        (* (image-height image) (image-width image)))

(define (isLarger? image1 image2)
  (> (imageArea image1) (imageArea image2)))