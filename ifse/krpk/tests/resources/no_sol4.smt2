(set-logic ALL)
(set-arch X86)
(define-ctype |const char*| (_ BitVec 64))
(define-ctype |void *| (_ BitVec 64))
(define-ctype |long long| (_ BitVec 64))
(define-ctype int (_ BitVec 32))
(define-ctype |char *| (_ BitVec 64))
(declare-cb strrchr (|char *| int) |const char*|)
(declare-const colossus_fresh_var_arr17 (Array (_ BitVec 32) (_ BitVec 8)))
(declare-cb mempcpy (|char *| |char *| |long long|) |void *|)
(declare-cb memset (|char *| int |long long|) |void *|)
(declare-cb strlen (|char *|) |long long|)
(alloc #x00000000051d1628 8 "6563686F2E626300")
(assert (= (concat (select colossus_fresh_var_arr17 #x00000007) (concat (select colossus_fresh_var_arr17 #x00000006) (concat (select colossus_fresh_var_arr17 #x00000005) (concat (select colossus_fresh_var_arr17 #x00000004) (concat (select colossus_fresh_var_arr17 #x00000003) (concat (select colossus_fresh_var_arr17 #x00000002) (concat (select colossus_fresh_var_arr17 #x00000001) (select colossus_fresh_var_arr17 #x00000000)))))))) (strrchr #x00000000051d1628 #x0000002f)))
(assert (not (= #x0000000000000000 (concat (select colossus_fresh_var_arr17 #x00000007) (concat (select colossus_fresh_var_arr17 #x00000006) (concat (select colossus_fresh_var_arr17 #x00000005) (concat (select colossus_fresh_var_arr17 #x00000004) (concat (select colossus_fresh_var_arr17 #x00000003) (concat (select colossus_fresh_var_arr17 #x00000002) (concat (select colossus_fresh_var_arr17 #x00000001) (select colossus_fresh_var_arr17 #x00000000)))))))))))