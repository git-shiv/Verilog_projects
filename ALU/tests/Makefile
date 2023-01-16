SIM ?= icarus
TOPLEVEL_LANG ?= verilog
VERILOG_SOURCES += $(PWD)/../hdl/alu.v
VERILOG_SOURCES += $(PWD)/wrappers/alu_test.v

alu: 

		rm -rf sim_build
		$(MAKE) sim MODULE=alu_test TOPLEVEL=alu_test

include $(shell cocotb-config --makefiles)/Makefile.sim
 