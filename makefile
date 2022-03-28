VERILOG = iverilog
TARGET = decoder.vcd

$(TARGET) : decoder_3_8.vvp
	vvp decoder_3_8.vvp

decoder_3_8.vvp: decoder_3_8_tb.v decoder_3_8.v
	$(VERILOG) -o decoder_3_8.vvp decoder_3_8_tb.v decoder_3_8.v

clean:
	rm $(TARGET)