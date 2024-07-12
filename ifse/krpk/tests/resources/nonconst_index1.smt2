(set-logic ALL)
(set-arch X86)
(define-ctype |long long| (_ BitVec 64))
(define-ctype |char *| (_ BitVec 64))
(declare-const arg01 (Array (_ BitVec 32) (_ BitVec 8)))
(declare-const colossus_fresh_var_arr2 (Array (_ BitVec 32) (_ BitVec 8)))
(declare-cb strlen (|char *|) |long long|)
(declare-const colossus_fresh_var_arr1 (Array (_ BitVec 32) (_ BitVec 8)))
(declare-const arg00 (Array (_ BitVec 32) (_ BitVec 8)))
(alloc #x0000000001e717e0 1 (select (store (store ((as const (Array (_ BitVec 32) (_ BitVec 8))) #x00) #x00000000 #x2d) #x00000001 #xab) #x00000000))
(alloc #x0000000001e717e1 1 "00")
(alloc #x00000000054e3411 1 (select arg01 #x00000001))
(alloc #x00000000054e3410 1 (select arg01 #x00000000))
(alloc #x00000000054e3412 1 "00")
(assert (= #x2d (select arg00 #x00000000)))
(assert (= #x00 (select arg00 #x00000001)))
(assert (not (= #x2f (select (store (store ((as const (Array (_ BitVec 32) (_ BitVec 8))) #x00) #x00000000 #x2d) #x00000001 #xab) #x00000000))))
(assert (not (= #x00 (select (store (store ((as const (Array (_ BitVec 32) (_ BitVec 8))) #x00) #x00000000 #x2d) #x00000001 #xab) #x00000000))))
(assert (= #x00 (select (store (store ((as const (Array (_ BitVec 32) (_ BitVec 8))) #x00) #x00000000 #x2d) #x00000001 #xab) #x00000001)))
(assert (= (concat (select colossus_fresh_var_arr1 #x00000007) (concat (select colossus_fresh_var_arr1 #x00000006) (concat (select colossus_fresh_var_arr1 #x00000005) (concat (select colossus_fresh_var_arr1 #x00000004) (concat (select colossus_fresh_var_arr1 #x00000003) (concat (select colossus_fresh_var_arr1 #x00000002) (concat (select colossus_fresh_var_arr1 #x00000001) (select colossus_fresh_var_arr1 #x00000000)))))))) (strlen #x0000000001e717e0)))
(assert (bvult #x0000000001e717e0 (bvadd #x0000000001e717e0 (concat (select colossus_fresh_var_arr1 #x00000007) (concat (select colossus_fresh_var_arr1 #x00000006) (concat (select colossus_fresh_var_arr1 #x00000005) (concat (select colossus_fresh_var_arr1 #x00000004) (concat (select colossus_fresh_var_arr1 #x00000003) (concat (select colossus_fresh_var_arr1 #x00000002) (concat (select colossus_fresh_var_arr1 #x00000001) (select colossus_fresh_var_arr1 #x00000000)))))))))))
(assert (= (concat (select colossus_fresh_var_arr2 #x00000007) (concat (select colossus_fresh_var_arr2 #x00000006) (concat (select colossus_fresh_var_arr2 #x00000005) (concat (select colossus_fresh_var_arr2 #x00000004) (concat (select colossus_fresh_var_arr2 #x00000003) (concat (select colossus_fresh_var_arr2 #x00000002) (concat (select colossus_fresh_var_arr2 #x00000001) (select colossus_fresh_var_arr2 #x00000000)))))))) (strlen #x00000000054e3410)))
(assert (bvult #x00000000054e3410 (bvadd #x00000000054e3410 (concat (select colossus_fresh_var_arr2 #x00000007) (concat (select colossus_fresh_var_arr2 #x00000006) (concat (select colossus_fresh_var_arr2 #x00000005) (concat (select colossus_fresh_var_arr2 #x00000004) (concat (select colossus_fresh_var_arr2 #x00000003) (concat (select colossus_fresh_var_arr2 #x00000002) (concat (select colossus_fresh_var_arr2 #x00000001) (select colossus_fresh_var_arr2 #x00000000)))))))))))
(assert (= ((_ sign_extend 24) (select (store (store ((as const (Array (_ BitVec 32) (_ BitVec 8))) #x00) #x00000000 #x2d) #x00000001 #xab) ((_ extract 31 0) (bvadd #xffffffffffffffff (concat (select colossus_fresh_var_arr1 #x00000007) (concat (select colossus_fresh_var_arr1 #x00000006) (concat (select colossus_fresh_var_arr1 #x00000005) (concat (select colossus_fresh_var_arr1 #x00000004) (concat (select colossus_fresh_var_arr1 #x00000003) (concat (select colossus_fresh_var_arr1 #x00000002) (concat (select colossus_fresh_var_arr1 #x00000001) (select colossus_fresh_var_arr1 #x00000000)))))))))))) ((_ sign_extend 24) (select arg01 ((_ extract 31 0) (bvadd #xffffffffffffffff (concat (select colossus_fresh_var_arr2 #x00000007) (concat (select colossus_fresh_var_arr2 #x00000006) (concat (select colossus_fresh_var_arr2 #x00000005) (concat (select colossus_fresh_var_arr2 #x00000004) (concat (select colossus_fresh_var_arr2 #x00000003) (concat (select colossus_fresh_var_arr2 #x00000002) (concat (select colossus_fresh_var_arr2 #x00000001) (select colossus_fresh_var_arr2 #x00000000))))))))))))))
