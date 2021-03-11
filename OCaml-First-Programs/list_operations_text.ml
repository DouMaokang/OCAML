open OUnit2
open ListOperations

let tests = "test suite for sum" >::: [
    "empty" >:: (fun _ -> assert_equal 0 (sum []));
    "one"   >:: (fun _ -> assert_equal 1 (sum [1]));
    "oneTwoThree" >:: (fun _ -> assert_equal 6 (sum [1, 2, 3]));
]

let _ = run_test_tt_main tests
