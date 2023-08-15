// The 'dmail' program.
program private_dmail_v1.aleo {
    
    record message {
        owner: address,
        gates: u64,
        from: address,

        data: field
        time: u64
    }

    transition send(to: address, data: field, time: u64) -> message {
        return message {
            owner: to,
            gates: 0u64,
            from: self.caller,

            data: data,
            time: time
        };
    }
    

}
