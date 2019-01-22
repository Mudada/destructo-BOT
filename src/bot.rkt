#lang racket

(require racket-cord)

(define bot-token (getenv "DESTRUCTOBOT"))

(define my-client (make-client bot-token #:auto-shard #t))

(on-event
 'message-create my-client
 (lambda (client message)
   (unless (string=? (user-id (message-author message))
                     (user-id (client-user client)))
     (cond
       [(string-prefix? (message-content message) "!pingo")
        (http:create-message client (message-channel-id message) "Estamos vivando, a si!")]))))

(define dr (make-log-receiver discord-logger 'debug))

(thread
 (thunk
  (let loop ()
    (let ([v (sync dr)])
      (printf "[~a] ~a\n" (vector-ref v 0)
              (vector-ref v 1)))
    (loop))))

(start-client my-client)
