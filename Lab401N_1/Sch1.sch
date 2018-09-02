<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_7" />
        <signal name="XLXN_11" />
        <signal name="XLXN_13" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="XLXN_19" />
        <signal name="BTN0" />
        <signal name="BTN3" />
        <signal name="SW(6)" />
        <signal name="SW(7)" />
        <signal name="SW(3:0)" />
        <signal name="SW(5:4)" />
        <signal name="AN(3:0)" />
        <signal name="SEG(7:0)" />
        <signal name="F50MHz" />
        <signal name="LED(7:0)" />
        <signal name="SW(7:0)" />
        <signal name="dat(3:0)" />
        <signal name="dat(7:4)" />
        <signal name="dat(11:8)" />
        <signal name="dat(15:12)" />
        <signal name="dat(15:0)" />
        <port polarity="Input" name="BTN0" />
        <port polarity="Input" name="BTN3" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="SEG(7:0)" />
        <port polarity="Input" name="F50MHz" />
        <port polarity="Output" name="LED(7:0)" />
        <port polarity="Input" name="SW(7:0)" />
        <blockdef name="VCB4CLED">
            <timestamp>2007-8-28T23:7:6</timestamp>
            <rect width="256" x="64" y="-384" height="384" />
            <line x2="0" y1="-352" y2="-352" x1="64" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-352" y2="-352" x1="320" />
            <line x2="384" y1="-192" y2="-192" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VCJ4RE">
            <timestamp>2007-8-28T23:7:11</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VCD4RE">
            <timestamp>2007-8-28T23:7:14</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="VCB4RE">
            <timestamp>2007-8-28T23:7:19</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <rect width="64" x="320" y="-44" height="24" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="Gen_Nms_1s">
            <timestamp>2007-8-28T23:10:36</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
        </blockdef>
        <blockdef name="DISPLAY">
            <timestamp>2007-8-28T23:7:23</timestamp>
            <rect width="256" x="64" y="-192" height="192" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
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
        <blockdef name="obuf8">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <rect width="64" x="0" y="-44" height="24" />
            <rect width="96" x="128" y="-44" height="24" />
        </blockdef>
        <block symbolname="VCB4CLED" name="XLXI_1">
            <blockpin signalname="XLXN_7" name="ce" />
            <blockpin signalname="SW(6)" name="up" />
            <blockpin signalname="BTN3" name="L" />
            <blockpin signalname="XLXN_13" name="clk" />
            <blockpin signalname="BTN0" name="clr" />
            <blockpin signalname="SW(3:0)" name="di(3:0)" />
            <blockpin signalname="XLXN_17" name="CEO" />
            <blockpin name="TC" />
            <blockpin signalname="dat(3:0)" name="Q(3:0)" />
        </block>
        <block symbolname="VCJ4RE" name="XLXI_2">
            <blockpin signalname="XLXN_17" name="ce" />
            <blockpin signalname="XLXN_13" name="clk" />
            <blockpin signalname="BTN0" name="r" />
            <blockpin name="TC" />
            <blockpin signalname="XLXN_18" name="CEO" />
            <blockpin signalname="dat(7:4)" name="Q(3:0)" />
        </block>
        <block symbolname="VCD4RE" name="XLXI_3">
            <blockpin signalname="XLXN_18" name="ce" />
            <blockpin signalname="XLXN_13" name="clk" />
            <blockpin signalname="BTN0" name="r" />
            <blockpin name="TC" />
            <blockpin signalname="XLXN_19" name="CEO" />
            <blockpin signalname="dat(11:8)" name="Q(3:0)" />
        </block>
        <block symbolname="VCB4RE" name="XLXI_4">
            <blockpin signalname="XLXN_19" name="ce" />
            <blockpin signalname="BTN0" name="r" />
            <blockpin signalname="XLXN_13" name="clk" />
            <blockpin name="TC" />
            <blockpin name="CEO" />
            <blockpin signalname="dat(15:12)" name="Q(3:0)" />
        </block>
        <block symbolname="Gen_Nms_1s" name="XLXI_5">
            <blockpin signalname="XLXN_13" name="clk" />
            <blockpin signalname="XLXN_11" name="ce" />
            <blockpin signalname="SW(7)" name="Tmod" />
            <blockpin signalname="XLXN_7" name="CEO" />
        </block>
        <block symbolname="DISPLAY" name="XLXI_6">
            <blockpin signalname="XLXN_13" name="clk" />
            <blockpin signalname="dat(15:0)" name="dat(15:0)" />
            <blockpin signalname="SW(5:4)" name="PTR(1:0)" />
            <blockpin signalname="XLXN_11" name="ce1ms" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="SEG(7:0)" name="SEG(7:0)" />
        </block>
        <block symbolname="bufg" name="XLXI_7">
            <blockpin signalname="F50MHz" name="I" />
            <blockpin signalname="XLXN_13" name="O" />
        </block>
        <block symbolname="obuf8" name="XLXI_11">
            <blockpin signalname="SW(7:0)" name="I(7:0)" />
            <blockpin signalname="LED(7:0)" name="O(7:0)" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="800" y="1056" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1760" y="1056" name="XLXI_5" orien="R0">
        </instance>
        <branch name="XLXN_7">
            <wire x2="736" y1="592" y2="704" x1="736" />
            <wire x2="800" y1="704" y2="704" x1="736" />
            <wire x2="2208" y1="592" y2="592" x1="736" />
            <wire x2="2208" y1="592" y2="896" x1="2208" />
            <wire x2="2208" y1="896" y2="896" x1="2144" />
        </branch>
        <instance x="800" y="1600" name="XLXI_2" orien="R0">
        </instance>
        <instance x="800" y="2160" name="XLXI_3" orien="R0">
        </instance>
        <instance x="800" y="2704" name="XLXI_4" orien="R0">
        </instance>
        <instance x="1760" y="1904" name="XLXI_6" orien="R0">
        </instance>
        <branch name="XLXN_11">
            <wire x2="1696" y1="784" y2="960" x1="1696" />
            <wire x2="1760" y1="960" y2="960" x1="1696" />
            <wire x2="2192" y1="784" y2="784" x1="1696" />
            <wire x2="2192" y1="784" y2="1744" x1="2192" />
            <wire x2="2192" y1="1744" y2="1744" x1="2144" />
        </branch>
        <branch name="XLXN_13">
            <wire x2="752" y1="896" y2="896" x1="720" />
            <wire x2="800" y1="896" y2="896" x1="752" />
            <wire x2="752" y1="896" y2="1504" x1="752" />
            <wire x2="800" y1="1504" y2="1504" x1="752" />
            <wire x2="752" y1="1504" y2="2064" x1="752" />
            <wire x2="800" y1="2064" y2="2064" x1="752" />
            <wire x2="752" y1="2064" y2="2672" x1="752" />
            <wire x2="800" y1="2672" y2="2672" x1="752" />
            <wire x2="752" y1="608" y2="896" x1="752" />
            <wire x2="1200" y1="608" y2="608" x1="752" />
            <wire x2="1200" y1="608" y2="896" x1="1200" />
            <wire x2="1680" y1="896" y2="896" x1="1200" />
            <wire x2="1760" y1="896" y2="896" x1="1680" />
            <wire x2="1680" y1="896" y2="1744" x1="1680" />
            <wire x2="1760" y1="1744" y2="1744" x1="1680" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="736" y1="1344" y2="1440" x1="736" />
            <wire x2="800" y1="1440" y2="1440" x1="736" />
            <wire x2="1280" y1="1344" y2="1344" x1="736" />
            <wire x2="1280" y1="704" y2="704" x1="1184" />
            <wire x2="1280" y1="704" y2="1344" x1="1280" />
        </branch>
        <branch name="XLXN_18">
            <wire x2="720" y1="1904" y2="2000" x1="720" />
            <wire x2="800" y1="2000" y2="2000" x1="720" />
            <wire x2="1264" y1="1904" y2="1904" x1="720" />
            <wire x2="1264" y1="1504" y2="1504" x1="1184" />
            <wire x2="1264" y1="1504" y2="1904" x1="1264" />
        </branch>
        <branch name="XLXN_19">
            <wire x2="736" y1="2448" y2="2544" x1="736" />
            <wire x2="800" y1="2544" y2="2544" x1="736" />
            <wire x2="1264" y1="2448" y2="2448" x1="736" />
            <wire x2="1264" y1="2064" y2="2064" x1="1184" />
            <wire x2="1264" y1="2064" y2="2448" x1="1264" />
        </branch>
        <branch name="BTN0">
            <wire x2="704" y1="960" y2="960" x1="512" />
            <wire x2="800" y1="960" y2="960" x1="704" />
            <wire x2="704" y1="960" y2="1568" x1="704" />
            <wire x2="704" y1="1568" y2="2128" x1="704" />
            <wire x2="720" y1="2128" y2="2128" x1="704" />
            <wire x2="800" y1="2128" y2="2128" x1="720" />
            <wire x2="720" y1="2128" y2="2608" x1="720" />
            <wire x2="800" y1="2608" y2="2608" x1="720" />
            <wire x2="800" y1="1568" y2="1568" x1="704" />
        </branch>
        <branch name="BTN3">
            <wire x2="800" y1="832" y2="832" x1="512" />
        </branch>
        <branch name="SW(6)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="768" type="branch" />
            <wire x2="800" y1="768" y2="768" x1="512" />
        </branch>
        <branch name="SW(7)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="656" type="branch" />
            <wire x2="1264" y1="656" y2="656" x1="512" />
            <wire x2="1264" y1="656" y2="1024" x1="1264" />
            <wire x2="1760" y1="1024" y2="1024" x1="1264" />
        </branch>
        <branch name="SW(3:0)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="1024" type="branch" />
            <wire x2="800" y1="1024" y2="1024" x1="512" />
        </branch>
        <branch name="SW(5:4)">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="512" y="432" type="branch" />
            <wire x2="1216" y1="432" y2="432" x1="512" />
            <wire x2="1216" y1="432" y2="1872" x1="1216" />
            <wire x2="1760" y1="1872" y2="1872" x1="1216" />
        </branch>
        <iomarker fontsize="28" x="512" y="832" name="BTN3" orien="R180" />
        <iomarker fontsize="28" x="512" y="960" name="BTN0" orien="R180" />
        <branch name="AN(3:0)">
            <wire x2="2176" y1="1808" y2="1808" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2176" y="1808" name="AN(3:0)" orien="R0" />
        <branch name="SEG(7:0)">
            <wire x2="2176" y1="1872" y2="1872" x1="2144" />
        </branch>
        <iomarker fontsize="28" x="2176" y="1872" name="SEG(7:0)" orien="R0" />
        <instance x="496" y="928" name="XLXI_7" orien="R0" />
        <branch name="F50MHz">
            <wire x2="496" y1="896" y2="896" x1="464" />
        </branch>
        <iomarker fontsize="28" x="464" y="896" name="F50MHz" orien="R180" />
        <instance x="1104" y="256" name="XLXI_11" orien="R0" />
        <branch name="LED(7:0)">
            <wire x2="1360" y1="224" y2="224" x1="1328" />
        </branch>
        <iomarker fontsize="28" x="1360" y="224" name="LED(7:0)" orien="R0" />
        <branch name="SW(7:0)">
            <wire x2="1104" y1="224" y2="224" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1072" y="224" name="SW(7:0)" orien="R180" />
        <branch name="dat(3:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1024" type="branch" />
            <wire x2="1200" y1="1024" y2="1024" x1="1184" />
            <wire x2="1248" y1="1024" y2="1024" x1="1200" />
        </branch>
        <branch name="dat(7:4)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="1568" type="branch" />
            <wire x2="1200" y1="1568" y2="1568" x1="1184" />
            <wire x2="1248" y1="1568" y2="1568" x1="1200" />
        </branch>
        <branch name="dat(11:8)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1200" y="2128" type="branch" />
            <wire x2="1200" y1="2128" y2="2128" x1="1184" />
            <wire x2="1248" y1="2128" y2="2128" x1="1200" />
        </branch>
        <branch name="dat(15:12)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1216" y="2672" type="branch" />
            <wire x2="1216" y1="2672" y2="2672" x1="1184" />
            <wire x2="1264" y1="2672" y2="2672" x1="1216" />
        </branch>
        <branch name="dat(15:0)">
            <attrtext style="alignment:SOFT-BCENTER;fontsize:28;fontname:Arial" attrname="Name" x="1680" y="1808" type="branch" />
            <wire x2="1648" y1="1808" y2="1808" x1="1632" />
            <wire x2="1664" y1="1808" y2="1808" x1="1648" />
            <wire x2="1680" y1="1808" y2="1808" x1="1664" />
            <wire x2="1760" y1="1808" y2="1808" x1="1680" />
        </branch>
    </sheet>
</drawing>