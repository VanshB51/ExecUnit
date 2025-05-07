configuration RippleShiftConfig of TBExecUnit is
    for tb -- Using the testbench architecture
        for DUT: ExecUnit
            use entity work.ExecUnit(execu); -- Ensure correct ExecUnit architecture

            for U1: ArithUnit
                use entity work.ArithUnit(rtl);
            end for;

            for U3: ShiftUnit
                use entity work.ShiftUnit(rtl);
            end for;

            for U1: Adder
                use entity work.Adder(ripple);  -- Choose Adder architecture
            end for;

            for U1: Shifter
                use entity work.Shifter(shift);  -- Choose Shifter architecture
            end for;

        end for;
    end for;
end ExecUnitConfig;


configuration RippleUnifiedConfig of TBExecUnit is
    for tb
        for DUT: ExecUnit
            for U1: ArithUnit
                for U1: Adder
                    use entity work.Adder(ripple);
                end for;
            end for;
            for U3: ShiftUnit
                for U1: Shifter
                    use entity work.Shifter(unified);
                end for;
            end for;
        end for;
    end for;
end configuration RippleUnifiedConfig;

configuration CarrySkipShiftConfig of TBExecUnit is
    for tb
        for DUT: ExecUnit
            for U1: ArithUnit
                for U1: Adder
                    use entity work.Adder(carryskip);
                end for;
            end for;
            for U3: ShiftUnit
                for U1: Shifter
                    use entity work.Shifter(shift);
                end for;
            end for;
        end for;
    end for;
end configuration CarrySkipShiftConfig;

configuration CarrySkipUnifiedConfig of TBExecUnit is
    for tb
        for DUT: ExecUnit
            for U1: ArithUnit
                for U1: Adder
                    use entity work.Adder(carryskip);
                end for;
            end for;
            for U3: ShiftUnit
                for U1: Shifter
                    use entity work.Shifter(unified);
                end for;
            end for;
        end for;
    end for;
end configuration CarrySkipUnifiedConfig;

configuration CLA_ShiftConfig of TBExecUnit is
    for tb
        for DUT: ExecUnit
            for U1: ArithUnit
                for U1: Adder
                    use entity work.Adder(carrylookahead);
                end for;
            end for;
            for U3: ShiftUnit
                for U1: Shifter
                    use entity work.Shifter(shift);
                end for;
            end for;
        end for;
    end for;
end configuration CLA_ShiftConfig;

configuration CLA_UnifiedConfig of TBExecUnit is
    for tb
        for DUT: ExecUnit
            for U1: ArithUnit
                for U1: Adder
                    use entity work.Adder(carrylookahead);
                end for;
            end for;
            for U3: ShiftUnit
                for U1: Shifter
                    use entity work.Shifter(unified);
                end for;
            end for;
        end for;
    end for;
end configuration CLA_UnifiedConfig;

configuration ConditionalShiftConfig of TBExecUnit is
    for tb
        for DUT: ExecUnit
            for U1: ArithUnit
                for U1: Adder
                    use entity work.Adder(conditional);
                end for;
            end for;
            for U3: ShiftUnit
                for U1: Shifter
                    use entity work.Shifter(shift);
                end for;
            end for;
        end for;
    end for;
end configuration ConditionalShiftConfig;

configuration ConditionalUnifiedConfig of TBExecUnit is
    for tb
        for DUT: ExecUnit
            for U1: ArithUnit
                for U1: Adder
                    use entity work.Adder(conditional);
                end for;
            end for;
            for U3: ShiftUnit
                for U1: Shifter
                    use entity work.Shifter(unified);
                end for;
            end for;
        end for;
    end for;
end configuration ConditionalUnifiedConfig;