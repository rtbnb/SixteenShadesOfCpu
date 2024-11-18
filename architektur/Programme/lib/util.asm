

%instr LDR(const reg toWrite, const i16 data)
    IML toWrite, data[0:7]
    IMH toWrite, data[8:15]