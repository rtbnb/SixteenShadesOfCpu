class Datapool:
    def __init__(self):
        self.data = {
            b"\x00": {'Name': "hold_clk"},
            b"\x01": {'Name': "count_one_cycle"},
            b"\x02": {'Name': "resume_clk"},
            b"\x0F": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "instruction_error"},
            b"\x10": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "pipeline_stalled"},
            b"\x11": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "pipeline_instruction_forwarding_config"},
            b"\x12": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "pipeline_current_instruction"},
            b"\x13": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "pipeline_operand_1"},
            b"\x14": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "pipeline_operand_2"},
            b"\x16": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "pipeline_jmp"},
            b"\x20": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "pc_din"},
            b"\x21": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "pc_dout"},
            b"\x22": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "pc_current_addr"},
            b"\x30": {'Name': "write_gram"},
            b"\x31": {'Name': "write_iram"},
            b"\x32": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'data_2_high': b'\x00', 'data_2_low': b'\x00', 'Name': "read_memory"},
            b"\x33": {'Name': "write_vram"},
            b"\x34": {'Name': "write_mmio"},
            b"\x40": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "alu_din1"},
            b"\x41": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "alu_din2"},
            b"\x42": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "alu_out"},
            b"\x43": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "alu_flags"},
            b"\x44": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "alu_op"},
            b"\x50": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "regfile_addr_reg1"},
            b"\x51": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "regfile_addr_reg2"},
            b"\x52": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "regfile_addr_write_reg"},
            b"\x53": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "regfile_write_enable"},
            b"\x54": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "regfile_overwrite_flag"},
            b"\x55": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "regfile_write_data"},
            b"\x56": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "regfile_reg1_data"},
            b"\x57": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "regfile_reg2_data"},
            b"\x59": {'data_1_high': b'\x00', 'data_1_low': b'\x00', 'Name': "regfile_overwrite_flag"}
        }

    def set_data(self, key: bytes, data_1_high=None, data_1_low=None, data_2_high=None, data_2_low=None):
        if key in self.data:
            if data_1_high is not None:
                self.data[key]['data_1_high'] = data_1_high
            if data_1_low is not None:
                self.data[key]['data_1_low'] = data_1_low
            if 'data_2_high' in self.data[key] and data_2_high is not None:
                self.data[key]['data_2_high'] = data_2_high
            if 'data_2_low' in self.data[key] and data_2_low is not None:
                self.data[key]['data_2_low'] = data_2_low
        else:
            raise KeyError(f"Key {key} not found in datapool")

    def get_data(self, key, subkey=None):
        if key in self.data:
            if subkey:
                if subkey in self.data[key]:
                    return self.data[key][subkey]
                else:
                    raise KeyError(f"Subkey {subkey} not found in datapool for key {key}")
            return self.data[key]
        else:
            raise KeyError(f"Key {key} not found in datapool")
    
    def get_dict(self):
        return self.data