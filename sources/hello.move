module hello_blockhain::hello_module {
    use std::debug::print;
    use std::string::utf8;

    // global storage
    struct Diff has key {
        difference: u64
    }

    // private function
    fun simple_function_1() {
        let a = 100;
        let b = 205;

        let c = a + b;
        print(&c);
    }

    // private function -> utility functions
    fun simple_function_2(){
        let my_message = utf8(b"hello world"); // [1101, 11011, 1100, 0010] -> "hello world"
        print(&my_message);
    }

    // public entry function
    public entry fun simple_function_3(user: &signer, num1: u64, num2: u64) {
        let c = num1 - num2;
        move_to(user ,Diff {
            difference: c
        })
    }


    #[test]
    fun test_simple_contract() {
        simple_function_1();
        simple_function_2()
    }

}

// address -> hello_blockchain: named_address, it represents an address
// familiarize yung syntax
// data structures
