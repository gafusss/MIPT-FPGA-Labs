<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="JC3" />
        <signal name="JC4" />
        <signal name="JC2" />
        <signal name="F50MHz" />
        <signal name="ce" />
        <signal name="clk" />
        <signal name="BTN3" />
        <signal name="SW(7:0)" />
        <signal name="AMP_SIN(7:0)" />
        <signal name="BTN1" />
        <signal name="BTN0" />
        <signal name="SIN(7:0)" />
        <signal name="Y(7:0)" />
        <signal name="X(7:0)" />
        <signal name="JA7" />
        <signal name="JA8" />
        <signal name="JA9" />
        <signal name="JA10" />
        <signal name="JB7" />
        <signal name="JB8" />
        <signal name="JB9" />
        <signal name="JB10" />
        <signal name="ce_tact" />
        <signal name="JD4" />
        <signal name="SIN(8:0)" />
        <signal name="JC1" />
        <signal name="SIN(8)" />
        <signal name="HEX_dat(7:0)" />
        <signal name="BTN2" />
        <signal name="DEC_dat(15:0)" />
        <signal name="seg_P" />
        <signal name="AN(3:0)" />
        <signal name="seg(6:0)" />
        <port polarity="Output" name="JC3" />
        <port polarity="Output" name="JC4" />
        <port polarity="Output" name="JC2" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Input" name="BTN3" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Input" name="BTN1" />
        <port polarity="Input" name="BTN0" />
        <port polarity="Output" name="JA7" />
        <port polarity="Output" name="JA8" />
        <port polarity="Output" name="JA9" />
        <port polarity="Output" name="JA10" />
        <port polarity="Output" name="JB7" />
        <port polarity="Output" name="JB8" />
        <port polarity="Output" name="JB9" />
        <port polarity="Output" name="JB10" />
        <port polarity="Output" name="JD4" />
        <port polarity="Output" name="JC1" />
        <port polarity="Input" name="BTN2" />
        <port polarity="Output" name="seg_P" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="seg(6:0)" />
        <blockdef name="Gen_SIN">
            <timestamp>2007-8-28T20:31:1</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Gen_ce">
            <timestamp>2007-8-28T20:30:57</timestamp>
            <rect width="256" x="64" y="-64" height="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="DISPLAY">
            <timestamp>2007-8-28T20:30:52</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="HEX_to_DEC">
            <timestamp>2007-8-28T20:30:48</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MUX_DAC">
            <timestamp>2007-8-28T20:30:44</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <rect width="64" x="0" y="-332" height="24" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-252" height="24" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-92" height="24" />
            <line x2="0" y1="-80" y2="-80" x1="64" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="MES_AMP_SIN_XT">
            <timestamp>2007-8-28T20:30:38</timestamp>
            <rect width="256" x="64" y="-640" height="640" />
            <line x2="0" y1="-608" y2="-608" x1="64" />
            <line x2="0" y1="-464" y2="-464" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <rect width="64" x="0" y="-188" height="24" />
            <line x2="0" y1="-176" y2="-176" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <rect width="64" x="320" y="-364" height="24" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <rect width="64" x="320" y="-300" height="24" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="bufg">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="0" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <blockdef name="MUX8_2">
            <timestamp>2007-8-28T20:30:27</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <block symbolname="Gen_SIN" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ce" name="ce" />
            <blockpin signalname="JD4" name="S" />
            <blockpin signalname="X(7:0)" name="X(7:0)" />
            <blockpin signalname="Y(7:0)" name="Y(7:0)" />
            <blockpin signalname="SIN(8:0)" name="SIN(8:0)" />
        </block>
        <block symbolname="Gen_ce" name="XLXI_2">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ce" name="ceo" />
        </block>
        <block symbolname="DISPLAY" name="XLXI_3">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="DEC_dat(15:0)" name="dat(15:0)" />
            <blockpin signalname="seg_P" name="seg_P" />
            <blockpin name="ce1ms" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="seg(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="HEX_to_DEC" name="XLXI_4">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ce" name="ce" />
            <blockpin signalname="ce_tact" name="st" />
            <blockpin signalname="HEX_dat(7:0)" name="HI(7:0)" />
            <blockpin name="ok_conv" />
            <blockpin name="en_conv" />
            <blockpin signalname="DEC_dat(15:0)" name="DO(15:0)" />
            <blockpin name="ptr_dig(1:0)" />
        </block>
        <block symbolname="MUX_DAC" name="XLXI_5">
            <blockpin signalname="BTN1" name="S1" />
            <blockpin signalname="BTN0" name="S0" />
            <blockpin signalname="AMP_SIN(7:0)" name="A(7:0)" />
            <blockpin signalname="SIN(7:0)" name="B(7:0)" />
            <blockpin signalname="Y(7:0)" name="C(7:0)" />
            <blockpin signalname="X(7:0)" name="D(7:0)" />
            <blockpin signalname="JA7" name="x0" />
            <blockpin signalname="JA8" name="x1" />
            <blockpin signalname="JA9" name="x2" />
            <blockpin signalname="JA10" name="x3" />
            <blockpin signalname="JB7" name="x4" />
            <blockpin signalname="JB8" name="x5" />
            <blockpin signalname="JB9" name="x6" />
            <blockpin signalname="JB10" name="x7" />
        </block>
        <block symbolname="MES_AMP_SIN_XT" name="XLXI_6">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ce" name="ce" />
            <blockpin signalname="BTN3" name="we" />
            <blockpin signalname="SW(7:0)" name="NT(7:0)" />
            <blockpin signalname="SIN(8:0)" name="SIN(8:0)" />
            <blockpin signalname="JC2" name="ce_tact" />
            <blockpin signalname="JC3" name="ce_S1" />
            <blockpin signalname="JC4" name="ce_S2" />
            <blockpin name="ok_SQ" />
            <blockpin name="S1(8:0)" />
            <blockpin name="S2(8:0)" />
            <blockpin name="mod_S1(7:0)" />
            <blockpin name="mod_S2(7:0)" />
            <blockpin name="AMP_QV(15:0)" />
            <blockpin signalname="AMP_SIN(7:0)" name="AMP_SIN(7:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_7">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="clk" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_8">
            <blockpin signalname="JC2" name="I" />
            <blockpin signalname="ce_tact" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_9">
            <blockpin signalname="SIN(8)" name="I" />
            <blockpin signalname="JC1" name="O" />
        </block>
        <block symbolname="MUX8_2" name="XLXI_10">
            <blockpin signalname="BTN2" name="S" />
            <blockpin signalname="AMP_SIN(7:0)" name="A(7:0)" />
            <blockpin signalname="SW(7:0)" name="B(7:0)" />
            <blockpin signalname="HEX_dat(7:0)" name="C(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1280" y="1056" name="XLXI_6" orien="R0">
        </instance>
        <branch name="JC3">
            <wire x2="1824" y1="512" y2="512" x1="1664" />
        </branch>
        <branch name="JC4">
            <wire x2="1824" y1="576" y2="576" x1="1664" />
        </branch>
        <instance x="1776" y="384" name="XLXI_8" orien="R0" />
        <branch name="JC2">
            <wire x2="1728" y1="448" y2="448" x1="1664" />
            <wire x2="1824" y1="448" y2="448" x1="1728" />
            <wire x2="1776" y1="352" y2="352" x1="1728" />
            <wire x2="1728" y1="352" y2="448" x1="1728" />
        </branch>
        <iomarker fontsize="28" x="1824" y="448" name="JC2" orien="R0" />
        <iomarker fontsize="28" x="1824" y="512" name="JC3" orien="R0" />
        <iomarker fontsize="28" x="1824" y="576" name="JC4" orien="R0" />
        <instance x="896" y="384" name="XLXI_7" orien="R0" />
        <branch name="F50MHz">
            <wire x2="896" y1="352" y2="352" x1="864" />
        </branch>
        <iomarker fontsize="28" x="864" y="352" name="F50MHz" orien="R180" />
        <branch name="ce">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1264" y="592" type="branch" />
            <wire x2="1264" y1="592" y2="592" x1="1248" />
            <wire x2="1280" y1="592" y2="592" x1="1264" />
        </branch>
        <instance x="864" y="624" name="XLXI_2" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1136" y="352" type="branch" />
            <wire x2="816" y1="448" y2="592" x1="816" />
            <wire x2="864" y1="592" y2="592" x1="816" />
            <wire x2="1120" y1="448" y2="448" x1="816" />
            <wire x2="1168" y1="448" y2="448" x1="1120" />
            <wire x2="1280" y1="448" y2="448" x1="1168" />
            <wire x2="1136" y1="352" y2="352" x1="1120" />
            <wire x2="1168" y1="352" y2="352" x1="1136" />
            <wire x2="1168" y1="352" y2="448" x1="1168" />
        </branch>
        <branch name="BTN3">
            <wire x2="1280" y1="736" y2="736" x1="1248" />
        </branch>
        <iomarker fontsize="28" x="1248" y="736" name="BTN3" orien="R180" />
        <branch name="SW(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1088" y="880" type="branch" />
            <wire x2="1088" y1="880" y2="880" x1="992" />
            <wire x2="1280" y1="880" y2="880" x1="1088" />
        </branch>
        <iomarker fontsize="28" x="992" y="880" name="SW(7:0)" orien="R180" />
        <instance x="1952" y="1344" name="XLXI_5" orien="R0">
        </instance>
        <branch name="AMP_SIN(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1792" y="1024" type="branch" />
            <wire x2="1728" y1="1024" y2="1024" x1="1664" />
            <wire x2="1792" y1="1024" y2="1024" x1="1728" />
            <wire x2="1952" y1="1024" y2="1024" x1="1792" />
        </branch>
        <branch name="BTN1">
            <wire x2="1952" y1="864" y2="864" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1920" y="864" name="BTN1" orien="R180" />
        <branch name="BTN0">
            <wire x2="1952" y1="944" y2="944" x1="1920" />
        </branch>
        <iomarker fontsize="28" x="1920" y="944" name="BTN0" orien="R180" />
        <branch name="SIN(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1104" type="branch" />
            <wire x2="1952" y1="1104" y2="1104" x1="1728" />
        </branch>
        <branch name="Y(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1184" type="branch" />
            <wire x2="1952" y1="1184" y2="1184" x1="1728" />
        </branch>
        <branch name="X(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1728" y="1264" type="branch" />
            <wire x2="1952" y1="1264" y2="1264" x1="1728" />
        </branch>
        <branch name="JA7">
            <wire x2="2368" y1="864" y2="864" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="864" name="JA7" orien="R0" />
        <branch name="JA8">
            <wire x2="2368" y1="928" y2="928" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="928" name="JA8" orien="R0" />
        <branch name="JA9">
            <wire x2="2368" y1="992" y2="992" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="992" name="JA9" orien="R0" />
        <branch name="JA10">
            <wire x2="2368" y1="1056" y2="1056" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1056" name="JA10" orien="R0" />
        <branch name="JB7">
            <wire x2="2368" y1="1120" y2="1120" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1120" name="JB7" orien="R0" />
        <branch name="JB8">
            <wire x2="2368" y1="1184" y2="1184" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1184" name="JB8" orien="R0" />
        <branch name="JB9">
            <wire x2="2368" y1="1248" y2="1248" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1248" name="JB9" orien="R0" />
        <branch name="JB10">
            <wire x2="2368" y1="1312" y2="1312" x1="2336" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1312" name="JB10" orien="R0" />
        <branch name="ce_tact">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="2064" y="352" type="branch" />
            <wire x2="2064" y1="352" y2="352" x1="2000" />
        </branch>
        <instance x="704" y="1376" name="XLXI_1" orien="R0">
        </instance>
        <branch name="ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1344" type="branch" />
            <wire x2="704" y1="1344" y2="1344" x1="640" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1152" type="branch" />
            <wire x2="704" y1="1152" y2="1152" x1="640" />
        </branch>
        <branch name="X(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1216" type="branch" />
            <wire x2="1312" y1="1216" y2="1216" x1="1088" />
        </branch>
        <branch name="Y(7:0)">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1312" y="1280" type="branch" />
            <wire x2="1312" y1="1280" y2="1280" x1="1088" />
        </branch>
        <branch name="JD4">
            <wire x2="1312" y1="1152" y2="1152" x1="1088" />
        </branch>
        <branch name="SIN(8:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1024" type="branch" />
            <wire x2="1200" y1="1344" y2="1344" x1="1088" />
            <wire x2="1200" y1="1024" y2="1344" x1="1200" />
            <wire x2="1280" y1="1024" y2="1024" x1="1200" />
        </branch>
        <iomarker fontsize="28" x="1312" y="1152" name="JD4" orien="R0" />
        <instance x="2032" y="1472" name="XLXI_9" orien="R0" />
        <branch name="JC1">
            <wire x2="2288" y1="1440" y2="1440" x1="2256" />
            <wire x2="2384" y1="1440" y2="1440" x1="2288" />
        </branch>
        <branch name="SIN(8)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1936" y="1440" type="branch" />
            <wire x2="2032" y1="1440" y2="1440" x1="1936" />
        </branch>
        <instance x="1344" y="1824" name="XLXI_4" orien="R0">
        </instance>
        <instance x="800" y="1952" name="XLXI_10" orien="R0">
        </instance>
        <branch name="HEX_dat(7:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1792" type="branch" />
            <wire x2="1248" y1="1792" y2="1792" x1="1184" />
            <wire x2="1344" y1="1792" y2="1792" x1="1248" />
        </branch>
        <branch name="BTN2">
            <wire x2="800" y1="1792" y2="1792" x1="768" />
        </branch>
        <iomarker fontsize="28" x="768" y="1792" name="BTN2" orien="R180" />
        <branch name="AMP_SIN(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1856" type="branch" />
            <wire x2="800" y1="1856" y2="1856" x1="640" />
        </branch>
        <branch name="SW(7:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="1920" type="branch" />
            <wire x2="800" y1="1920" y2="1920" x1="640" />
        </branch>
        <branch name="ce_tact">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1728" type="branch" />
            <wire x2="1344" y1="1728" y2="1728" x1="1248" />
        </branch>
        <branch name="ce">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1664" type="branch" />
            <wire x2="1344" y1="1664" y2="1664" x1="1248" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1248" y="1600" type="branch" />
            <wire x2="1344" y1="1600" y2="1600" x1="1248" />
        </branch>
        <instance x="2032" y="1824" name="XLXI_3" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1984" y="1600" type="branch" />
            <wire x2="2032" y1="1600" y2="1600" x1="1984" />
        </branch>
        <branch name="DEC_dat(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1872" y="1728" type="branch" />
            <wire x2="1872" y1="1728" y2="1728" x1="1728" />
            <wire x2="1872" y1="1728" y2="1792" x1="1872" />
            <wire x2="2032" y1="1792" y2="1792" x1="1872" />
        </branch>
        <branch name="seg_P">
            <wire x2="2448" y1="1600" y2="1600" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1600" name="seg_P" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="2448" y1="1728" y2="1728" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1728" name="AN(3:0)" orien="R0" />
        <branch name="seg(6:0)">
            <wire x2="2448" y1="1792" y2="1792" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2448" y="1792" name="seg(6:0)" orien="R0" />
        <iomarker fontsize="28" x="2384" y="1440" name="JC1" orien="R0" />
    </sheet>
</drawing>