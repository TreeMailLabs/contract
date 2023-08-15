program private_dmail_v1.aleo;

record message:
    owner as address.private;
    gates as u64.private;
    from as address.private;
    data as field.private;
    time as u64.private;


function send:
    input r0 as address.private;
    input r1 as field.private;
    input r2 as u64.private;
    cast r0 0u64 self.caller r1 r2 into r3 as message.record;
    output r3 as message.record;
