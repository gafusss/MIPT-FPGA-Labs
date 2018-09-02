<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="clk" />
        <signal name="F50MHz" />
        <signal name="TXD" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="JD4" />
        <signal name="bf_TXD" />
        <signal name="JB8" />
        <signal name="JB3" />
        <signal name="JB4" />
        <signal name="JB7" />
        <signal name="XLXN_14" />
        <signal name="LED7" />
        <signal name="JB2" />
        <signal name="SW(7:0)" />
        <signal name="seg_P" />
        <signal name="seg(6:0)" />
        <signal name="AN(3:0)" />
        <signal name="ce1ms" />
        <signal name="JD3" />
        <signal name="RXD" />
        <signal name="XLXN_29" />
        <signal name="BTN3" />
        <signal name="XLXN_33" />
        <signal name="JC1" />
        <signal name="JC8" />
        <signal name="JC3" />
        <signal name="JC4" />
        <signal name="JC7" />
        <signal name="XLXN_39" />
        <signal name="LED0" />
        <signal name="JC2" />
        <signal name="XLXN_42(7:0)" />
        <signal name="XLXN_43" />
        <signal name="BTN0" />
        <signal name="XLXN_46(7:0)" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Output" name="TXD" />
        <port polarity="Output" name="JD4" />
        <port polarity="Output" name="JB8" />
        <port polarity="Output" name="JB3" />
        <port polarity="Output" name="JB4" />
        <port polarity="Output" name="JB7" />
        <port polarity="Output" name="LED7" />
        <port polarity="Output" name="JB2" />
        <port polarity="Input" name="SW(7:0)" />
        <port polarity="Output" name="seg_P" />
        <port polarity="Output" name="seg(6:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Input" name="JD3" />
        <port polarity="Input" name="RXD" />
        <port polarity="Input" name="BTN3" />
        <port polarity="Output" name="JC1" />
        <port polarity="Output" name="JC8" />
        <port polarity="Output" name="JC3" />
        <port polarity="Output" name="JC4" />
        <port polarity="Output" name="JC7" />
        <port polarity="Output" name="LED0" />
        <port polarity="Output" name="JC2" />
        <port polarity="Input" name="BTN0" />
        <blockdef name="UTXD1B">
            <timestamp>2017-3-11T8:27:19</timestamp>
            <rect width="256" x="64" y="-576" height="576" />
            <line x2="0" y1="-544" y2="-544" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="URXD1B">
            <timestamp>2017-3-11T8:59:40</timestamp>
            <rect width="256" x="64" y="-704" height="704" />
            <line x2="384" y1="-672" y2="-672" x1="320" />
            <line x2="384" y1="-608" y2="-608" x1="320" />
            <line x2="384" y1="-544" y2="-544" x1="320" />
            <line x2="384" y1="-480" y2="-480" x1="320" />
            <line x2="384" y1="-416" y2="-416" x1="320" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-288" y2="-288" x1="320" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
            <line x2="0" y1="-656" y2="-656" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
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
        <blockdef name="DISPL">
            <timestamp>2017-3-11T8:27:37</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-140" height="24" />
            <line x2="0" y1="-128" y2="-128" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-108" height="24" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="m2_1">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="96" y1="-64" y2="-192" x1="96" />
            <line x2="96" y1="-96" y2="-64" x1="256" />
            <line x2="256" y1="-160" y2="-96" x1="256" />
            <line x2="256" y1="-192" y2="-160" x1="96" />
            <line x2="96" y1="-32" y2="-32" x1="176" />
            <line x2="176" y1="-80" y2="-32" x1="176" />
            <line x2="96" y1="-32" y2="-32" x1="0" />
            <line x2="256" y1="-128" y2="-128" x1="320" />
            <line x2="96" y1="-96" y2="-96" x1="0" />
            <line x2="96" y1="-160" y2="-160" x1="0" />
        </blockdef>
        <blockdef name="fd8re">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="320" y1="-256" y2="-256" x1="384" />
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <rect width="64" x="0" y="-268" height="24" />
            <rect width="64" x="320" y="-268" height="24" />
            <line x2="64" y1="-128" y2="-144" x1="80" />
            <line x2="80" y1="-112" y2="-128" x1="64" />
            <line x2="64" y1="-32" y2="-32" x1="192" />
            <line x2="192" y1="-64" y2="-32" x1="192" />
            <rect width="256" x="64" y="-320" height="256" />
        </blockdef>
        <block symbolname="UTXD1B" name="XLXI_1">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="ce1ms" name="st" />
            <blockpin signalname="SW(7:0)" name="dat(7:0)" />
            <blockpin signalname="TXD" name="TXD" />
            <blockpin signalname="JB8" name="ce_tact" />
            <blockpin signalname="JB3" name="T_start" />
            <blockpin signalname="JB4" name="T_dat" />
            <blockpin signalname="JB7" name="T_stop" />
            <blockpin name="ce_stop" />
            <blockpin signalname="LED7" name="en_tx_byte" />
            <blockpin name="cb_bit(3:0)" />
            <blockpin name="sr_dat(7:0)" />
        </block>
        <block symbolname="buf" name="XLXI_4">
            <blockpin signalname="TXD" name="I" />
            <blockpin signalname="bf_TXD" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_5">
            <blockpin signalname="TXD" name="I" />
            <blockpin signalname="JD4" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="LED7" name="I" />
            <blockpin signalname="JB2" name="O" />
        </block>
        <block symbolname="DISPL" name="XLXI_7">
            <blockpin signalname="clk" name="clk" />
            <blockpin signalname="SW(7:0)" name="HB(7:0)" />
            <blockpin signalname="XLXN_46(7:0)" name="LB(7:0)" />
            <blockpin signalname="seg_P" name="seg_P" />
            <blockpin signalname="ce1ms" name="ce1ms" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="seg(6:0)" name="seg(6:0)" />
        </block>
        <block symbolname="m2_1" name="XLXI_9">
            <blockpin signalname="XLXN_29" name="D0" />
            <blockpin signalname="bf_TXD" name="D1" />
            <blockpin signalname="BTN3" name="S0" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="bufg" name="XLXI_3">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="clk" name="O" />
        </block>
        <block symbolname="URXD1B" name="XLXI_2">
            <blockpin signalname="JC1" name="RXD" />
            <blockpin signalname="JC8" name="ce_tact" />
            <blockpin signalname="JC3" name="T_start" />
            <blockpin signalname="JC4" name="T_dat" />
            <blockpin signalname="JC7" name="T_stop" />
            <blockpin signalname="LED0" name="en_rx_byte" />
            <blockpin signalname="XLXN_43" name="ok_rx_byte" />
            <blockpin name="start" />
            <blockpin name="ce_bit" />
            <blockpin name="cb_bit(3:0)" />
            <blockpin signalname="XLXN_42(7:0)" name="sr_dat(7:0)" />
            <blockpin signalname="XLXN_33" name="Inp" />
            <blockpin signalname="clk" name="clk" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="RXD" name="I0" />
            <blockpin signalname="JD3" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_10">
            <blockpin signalname="LED0" name="I" />
            <blockpin signalname="JC2" name="O" />
        </block>
        <block symbolname="fd8re" name="XLXI_11">
            <blockpin signalname="clk" name="C" />
            <blockpin signalname="XLXN_43" name="CE" />
            <blockpin signalname="XLXN_42(7:0)" name="D(7:0)" />
            <blockpin signalname="BTN0" name="R" />
            <blockpin signalname="XLXN_46(7:0)" name="Q(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="752" y="784" name="XLXI_1" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="688" y="240" type="branch" />
            <wire x2="688" y1="240" y2="240" x1="672" />
            <wire x2="704" y1="240" y2="240" x1="688" />
            <wire x2="752" y1="240" y2="240" x1="704" />
        </branch>
        <instance x="448" y="272" name="XLXI_3" orien="R0" />
        <branch name="F50MHz">
            <wire x2="448" y1="240" y2="240" x1="416" />
        </branch>
        <iomarker fontsize="28" x="416" y="240" name="F50MHz" orien="R180" />
        <branch name="TXD">
            <wire x2="1216" y1="240" y2="240" x1="1136" />
            <wire x2="1616" y1="240" y2="240" x1="1216" />
            <wire x2="1280" y1="80" y2="80" x1="1216" />
            <wire x2="1216" y1="80" y2="176" x1="1216" />
            <wire x2="1280" y1="176" y2="176" x1="1216" />
            <wire x2="1216" y1="176" y2="240" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="1616" y="240" name="TXD" orien="R0" />
        <instance x="1280" y="208" name="XLXI_4" orien="R0" />
        <instance x="1280" y="112" name="XLXI_5" orien="R0" />
        <branch name="JD4">
            <wire x2="1536" y1="80" y2="80" x1="1504" />
        </branch>
        <iomarker fontsize="28" x="1536" y="80" name="JD4" orien="R0" />
        <branch name="bf_TXD">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1584" y="176" type="branch" />
            <wire x2="1584" y1="176" y2="176" x1="1504" />
        </branch>
        <branch name="JB8">
            <wire x2="1168" y1="304" y2="304" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="304" name="JB8" orien="R0" />
        <branch name="JB3">
            <wire x2="1168" y1="368" y2="368" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="368" name="JB3" orien="R0" />
        <branch name="JB4">
            <wire x2="1168" y1="432" y2="432" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="432" name="JB4" orien="R0" />
        <branch name="JB7">
            <wire x2="1168" y1="496" y2="496" x1="1136" />
        </branch>
        <iomarker fontsize="28" x="1168" y="496" name="JB7" orien="R0" />
        <instance x="1264" y="592" name="XLXI_6" orien="R0" />
        <branch name="LED7">
            <wire x2="1232" y1="624" y2="624" x1="1136" />
            <wire x2="1264" y1="624" y2="624" x1="1232" />
            <wire x2="1552" y1="624" y2="624" x1="1264" />
            <wire x2="1264" y1="560" y2="560" x1="1232" />
            <wire x2="1232" y1="560" y2="624" x1="1232" />
        </branch>
        <iomarker fontsize="28" x="1552" y="624" name="LED7" orien="R0" />
        <branch name="JB2">
            <wire x2="1520" y1="560" y2="560" x1="1488" />
        </branch>
        <iomarker fontsize="28" x="1520" y="560" name="JB2" orien="R0" />
        <instance x="1312" y="976" name="XLXI_7" orien="R0">
        </instance>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="752" type="branch" />
            <wire x2="1312" y1="752" y2="752" x1="1216" />
        </branch>
        <branch name="SW(7:0)">
            <wire x2="704" y1="848" y2="848" x1="496" />
            <wire x2="1312" y1="848" y2="848" x1="704" />
            <wire x2="752" y1="752" y2="752" x1="704" />
            <wire x2="704" y1="752" y2="848" x1="704" />
        </branch>
        <iomarker fontsize="28" x="496" y="848" name="SW(7:0)" orien="R180" />
        <branch name="seg_P">
            <wire x2="1728" y1="752" y2="752" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="752" name="seg_P" orien="R0" />
        <branch name="seg(6:0)">
            <wire x2="1728" y1="944" y2="944" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="944" name="seg(6:0)" orien="R0" />
        <branch name="AN(3:0)">
            <wire x2="1728" y1="880" y2="880" x1="1696" />
        </branch>
        <iomarker fontsize="28" x="1728" y="880" name="AN(3:0)" orien="R0" />
        <branch name="ce1ms">
            <attrtext style="alignment:SOFT-LEFT;fontsize:28;fontname:Arial" attrname="Name" x="1824" y="816" type="branch" />
            <wire x2="1824" y1="816" y2="816" x1="1696" />
        </branch>
        <branch name="ce1ms">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="624" y="496" type="branch" />
            <wire x2="752" y1="496" y2="496" x1="624" />
        </branch>
        <instance x="384" y="1168" name="XLXI_8" orien="R0" />
        <branch name="JD3">
            <wire x2="384" y1="1040" y2="1040" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="1040" name="JD3" orien="R180" />
        <branch name="RXD">
            <wire x2="384" y1="1104" y2="1104" x1="352" />
        </branch>
        <iomarker fontsize="28" x="352" y="1104" name="RXD" orien="R180" />
        <instance x="672" y="1296" name="XLXI_9" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="656" y1="1072" y2="1072" x1="640" />
            <wire x2="656" y1="1072" y2="1136" x1="656" />
            <wire x2="672" y1="1136" y2="1136" x1="656" />
        </branch>
        <branch name="bf_TXD">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="1200" type="branch" />
            <wire x2="672" y1="1200" y2="1200" x1="560" />
        </branch>
        <branch name="BTN3">
            <wire x2="672" y1="1264" y2="1264" x1="640" />
        </branch>
        <iomarker fontsize="28" x="640" y="1264" name="BTN3" orien="R180" />
        <instance x="624" y="2128" name="XLXI_2" orien="R0">
        </instance>
        <branch name="XLXN_33">
            <wire x2="624" y1="1328" y2="1328" x1="608" />
            <wire x2="1024" y1="1328" y2="1328" x1="624" />
            <wire x2="608" y1="1328" y2="1472" x1="608" />
            <wire x2="624" y1="1472" y2="1472" x1="608" />
            <wire x2="1024" y1="1168" y2="1168" x1="992" />
            <wire x2="1024" y1="1168" y2="1328" x1="1024" />
        </branch>
        <branch name="JC1">
            <wire x2="1040" y1="1456" y2="1456" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1456" name="JC1" orien="R0" />
        <branch name="JC8">
            <wire x2="1040" y1="1520" y2="1520" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1520" name="JC8" orien="R0" />
        <branch name="JC3">
            <wire x2="1040" y1="1584" y2="1584" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1584" name="JC3" orien="R0" />
        <branch name="JC4">
            <wire x2="1040" y1="1648" y2="1648" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1648" name="JC4" orien="R0" />
        <branch name="JC7">
            <wire x2="1040" y1="1712" y2="1712" x1="1008" />
        </branch>
        <iomarker fontsize="28" x="1040" y="1712" name="JC7" orien="R0" />
        <instance x="1136" y="1872" name="XLXI_10" orien="R0" />
        <branch name="LED0">
            <wire x2="1120" y1="1776" y2="1776" x1="1008" />
            <wire x2="1312" y1="1776" y2="1776" x1="1120" />
            <wire x2="1120" y1="1776" y2="1840" x1="1120" />
            <wire x2="1136" y1="1840" y2="1840" x1="1120" />
        </branch>
        <iomarker fontsize="28" x="1312" y="1776" name="LED0" orien="R0" />
        <branch name="JC2">
            <wire x2="1392" y1="1840" y2="1840" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="1392" y="1840" name="JC2" orien="R0" />
        <instance x="1184" y="2352" name="XLXI_11" orien="R0" />
        <branch name="XLXN_42(7:0)">
            <wire x2="1184" y1="2096" y2="2096" x1="1008" />
        </branch>
        <branch name="XLXN_43">
            <wire x2="1072" y1="1840" y2="1840" x1="1008" />
            <wire x2="1072" y1="1840" y2="2160" x1="1072" />
            <wire x2="1184" y1="2160" y2="2160" x1="1072" />
        </branch>
        <branch name="clk">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="496" y="2224" type="branch" />
            <wire x2="576" y1="2224" y2="2224" x1="496" />
            <wire x2="1184" y1="2224" y2="2224" x1="576" />
            <wire x2="576" y1="2096" y2="2224" x1="576" />
            <wire x2="624" y1="2096" y2="2096" x1="576" />
        </branch>
        <branch name="BTN0">
            <wire x2="1184" y1="2320" y2="2320" x1="1152" />
        </branch>
        <iomarker fontsize="28" x="1152" y="2320" name="BTN0" orien="R180" />
        <branch name="XLXN_46(7:0)">
            <wire x2="1312" y1="944" y2="944" x1="1264" />
            <wire x2="1264" y1="944" y2="1440" x1="1264" />
            <wire x2="1712" y1="1440" y2="1440" x1="1264" />
            <wire x2="1712" y1="1440" y2="2096" x1="1712" />
            <wire x2="1712" y1="2096" y2="2096" x1="1568" />
        </branch>
    </sheet>
</drawing>