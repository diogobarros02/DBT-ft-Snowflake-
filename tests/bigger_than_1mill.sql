SELECT sum(c_acctbal) from {{ ref('playing_with_tests') }}  as total_acctbal
having total_acctbal > 100000000