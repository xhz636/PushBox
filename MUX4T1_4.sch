<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_8" />
        <signal name="XLXN_13" />
        <signal name="XLXN_16" />
        <signal name="XLXN_9" />
        <signal name="XLXN_10" />
        <signal name="XLXN_12" />
        <signal name="XLXN_20" />
        <signal name="XLXN_11" />
        <signal name="XLXN_22" />
        <signal name="XLXN_23" />
        <signal name="XLXN_24" />
        <signal name="XLXN_25" />
        <signal name="XLXN_26" />
        <signal name="XLXN_27" />
        <signal name="XLXN_28" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_33" />
        <signal name="XLXN_34" />
        <signal name="XLXN_35" />
        <signal name="XLXN_36" />
        <signal name="s(1:0)" />
        <signal name="XLXN_42(1:0)" />
        <signal name="s(1)" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="s(0)" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="I0(3:0)" />
        <signal name="I1(3:0)" />
        <signal name="XLXN_51" />
        <signal name="I3(3:0)" />
        <signal name="I2(3:0)" />
        <signal name="XLXN_56" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="I0(0)" />
        <signal name="I1(0)" />
        <signal name="I2(0)" />
        <signal name="I3(0)" />
        <signal name="I0(1)" />
        <signal name="I1(1)" />
        <signal name="I2(1)" />
        <signal name="I3(1)" />
        <signal name="I0(2)" />
        <signal name="I1(2)" />
        <signal name="I2(2)" />
        <signal name="I3(2)" />
        <signal name="I0(3)" />
        <signal name="I1(3)" />
        <signal name="I2(3)" />
        <signal name="I3(3)" />
        <signal name="o(3:0)" />
        <signal name="o(0)" />
        <signal name="o(1)" />
        <signal name="o(2)" />
        <signal name="o(3)" />
        <port polarity="Input" name="s(1:0)" />
        <port polarity="Input" name="I0(3:0)" />
        <port polarity="Input" name="I1(3:0)" />
        <port polarity="Input" name="I3(3:0)" />
        <port polarity="Input" name="I2(3:0)" />
        <port polarity="Output" name="o(3:0)" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
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
        <blockdef name="or4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="48" y1="-256" y2="-256" x1="0" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <arc ex="112" ey="-208" sx="192" sy="-160" r="88" cx="116" cy="-120" />
            <line x2="48" y1="-208" y2="-208" x1="112" />
            <line x2="48" y1="-112" y2="-112" x1="112" />
            <line x2="48" y1="-256" y2="-208" x1="48" />
            <line x2="48" y1="-64" y2="-112" x1="48" />
            <arc ex="48" ey="-208" sx="48" sy="-112" r="56" cx="16" cy="-160" />
            <arc ex="192" ey="-160" sx="112" sy="-112" r="88" cx="116" cy="-200" />
        </blockdef>
        <block symbolname="or4" name="XLXI_11">
            <blockpin signalname="XLXN_12" name="I0" />
            <blockpin signalname="XLXN_11" name="I1" />
            <blockpin signalname="XLXN_10" name="I2" />
            <blockpin signalname="XLXN_9" name="I3" />
            <blockpin signalname="o(0)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_7">
            <blockpin signalname="I0(0)" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_8">
            <blockpin signalname="I1(0)" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_10" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_9">
            <blockpin signalname="I2(0)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_11" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_10">
            <blockpin signalname="I3(0)" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="XLXN_12" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_17">
            <blockpin signalname="XLXN_24" name="I0" />
            <blockpin signalname="XLXN_26" name="I1" />
            <blockpin signalname="XLXN_23" name="I2" />
            <blockpin signalname="XLXN_22" name="I3" />
            <blockpin signalname="o(1)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_18">
            <blockpin signalname="I0(1)" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_22" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_19">
            <blockpin signalname="I1(1)" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_23" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_20">
            <blockpin signalname="I2(1)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_26" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_21">
            <blockpin signalname="I3(1)" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="XLXN_24" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_22">
            <blockpin signalname="XLXN_29" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="XLXN_28" name="I2" />
            <blockpin signalname="XLXN_27" name="I3" />
            <blockpin signalname="o(2)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_23">
            <blockpin signalname="I0(2)" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_27" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_24">
            <blockpin signalname="I1(2)" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_28" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_25">
            <blockpin signalname="I2(2)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_26">
            <blockpin signalname="I3(2)" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_27">
            <blockpin signalname="XLXN_34" name="I0" />
            <blockpin signalname="XLXN_36" name="I1" />
            <blockpin signalname="XLXN_33" name="I2" />
            <blockpin signalname="XLXN_32" name="I3" />
            <blockpin signalname="o(3)" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_28">
            <blockpin signalname="I0(3)" name="I0" />
            <blockpin signalname="XLXN_40" name="I1" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_29">
            <blockpin signalname="I1(3)" name="I0" />
            <blockpin signalname="XLXN_56" name="I1" />
            <blockpin signalname="XLXN_33" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_30">
            <blockpin signalname="I2(3)" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="XLXN_36" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_31">
            <blockpin signalname="I3(3)" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="XLXN_34" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="s(0)" name="I" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_2">
            <blockpin signalname="s(1)" name="I" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_4">
            <blockpin signalname="XLXN_7" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="XLXN_56" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_5">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="XLXN_6" name="I1" />
            <blockpin signalname="XLXN_57" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_6">
            <blockpin signalname="s(1)" name="I0" />
            <blockpin signalname="s(0)" name="I1" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="2496" y="880" name="XLXI_11" orien="R0" />
        <instance x="2016" y="624" name="XLXI_7" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="2496" y1="528" y2="528" x1="2272" />
            <wire x2="2496" y1="528" y2="624" x1="2496" />
        </branch>
        <branch name="XLXN_10">
            <wire x2="2288" y1="656" y2="656" x1="2272" />
            <wire x2="2288" y1="656" y2="688" x1="2288" />
            <wire x2="2496" y1="688" y2="688" x1="2288" />
        </branch>
        <instance x="2016" y="752" name="XLXI_8" orien="R0" />
        <instance x="2016" y="880" name="XLXI_9" orien="R0" />
        <instance x="2016" y="1008" name="XLXI_10" orien="R0" />
        <branch name="XLXN_12">
            <wire x2="2496" y1="912" y2="912" x1="2272" />
            <wire x2="2496" y1="816" y2="912" x1="2496" />
        </branch>
        <branch name="XLXN_11">
            <wire x2="2288" y1="784" y2="784" x1="2272" />
            <wire x2="2496" y1="752" y2="752" x1="2288" />
            <wire x2="2288" y1="752" y2="784" x1="2288" />
        </branch>
        <instance x="2496" y="1440" name="XLXI_17" orien="R0" />
        <instance x="2016" y="1184" name="XLXI_18" orien="R0" />
        <branch name="XLXN_22">
            <wire x2="2496" y1="1088" y2="1088" x1="2272" />
            <wire x2="2496" y1="1088" y2="1184" x1="2496" />
        </branch>
        <branch name="XLXN_23">
            <wire x2="2288" y1="1216" y2="1216" x1="2272" />
            <wire x2="2288" y1="1216" y2="1248" x1="2288" />
            <wire x2="2496" y1="1248" y2="1248" x1="2288" />
        </branch>
        <instance x="2016" y="1312" name="XLXI_19" orien="R0" />
        <instance x="2016" y="1440" name="XLXI_20" orien="R0" />
        <instance x="2016" y="1568" name="XLXI_21" orien="R0" />
        <branch name="XLXN_24">
            <wire x2="2496" y1="1472" y2="1472" x1="2272" />
            <wire x2="2496" y1="1376" y2="1472" x1="2496" />
        </branch>
        <branch name="XLXN_26">
            <wire x2="2288" y1="1344" y2="1344" x1="2272" />
            <wire x2="2496" y1="1312" y2="1312" x1="2288" />
            <wire x2="2288" y1="1312" y2="1344" x1="2288" />
        </branch>
        <instance x="2496" y="2000" name="XLXI_22" orien="R0" />
        <instance x="2016" y="1744" name="XLXI_23" orien="R0" />
        <branch name="XLXN_27">
            <wire x2="2496" y1="1648" y2="1648" x1="2272" />
            <wire x2="2496" y1="1648" y2="1744" x1="2496" />
        </branch>
        <branch name="XLXN_28">
            <wire x2="2288" y1="1776" y2="1776" x1="2272" />
            <wire x2="2288" y1="1776" y2="1808" x1="2288" />
            <wire x2="2496" y1="1808" y2="1808" x1="2288" />
        </branch>
        <instance x="2016" y="1872" name="XLXI_24" orien="R0" />
        <instance x="2016" y="2000" name="XLXI_25" orien="R0" />
        <instance x="2016" y="2128" name="XLXI_26" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="2496" y1="2032" y2="2032" x1="2272" />
            <wire x2="2496" y1="1936" y2="2032" x1="2496" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="2288" y1="1904" y2="1904" x1="2272" />
            <wire x2="2496" y1="1872" y2="1872" x1="2288" />
            <wire x2="2288" y1="1872" y2="1904" x1="2288" />
        </branch>
        <instance x="2496" y="2560" name="XLXI_27" orien="R0" />
        <instance x="2016" y="2304" name="XLXI_28" orien="R0" />
        <branch name="XLXN_32">
            <wire x2="2496" y1="2208" y2="2208" x1="2272" />
            <wire x2="2496" y1="2208" y2="2304" x1="2496" />
        </branch>
        <branch name="XLXN_33">
            <wire x2="2288" y1="2336" y2="2336" x1="2272" />
            <wire x2="2288" y1="2336" y2="2368" x1="2288" />
            <wire x2="2496" y1="2368" y2="2368" x1="2288" />
        </branch>
        <instance x="2016" y="2432" name="XLXI_29" orien="R0" />
        <instance x="2016" y="2560" name="XLXI_30" orien="R0" />
        <instance x="2016" y="2688" name="XLXI_31" orien="R0" />
        <branch name="XLXN_34">
            <wire x2="2496" y1="2592" y2="2592" x1="2272" />
            <wire x2="2496" y1="2496" y2="2592" x1="2496" />
        </branch>
        <branch name="XLXN_36">
            <wire x2="2288" y1="2464" y2="2464" x1="2272" />
            <wire x2="2496" y1="2432" y2="2432" x1="2288" />
            <wire x2="2288" y1="2432" y2="2464" x1="2288" />
        </branch>
        <branch name="s(1:0)">
            <wire x2="368" y1="512" y2="512" x1="240" />
            <wire x2="368" y1="512" y2="560" x1="368" />
            <wire x2="368" y1="560" y2="576" x1="368" />
            <wire x2="368" y1="448" y2="464" x1="368" />
            <wire x2="368" y1="464" y2="512" x1="368" />
        </branch>
        <bustap x2="464" y1="464" y2="464" x1="368" />
        <bustap x2="464" y1="560" y2="560" x1="368" />
        <instance x="624" y="496" name="XLXI_1" orien="R0" />
        <instance x="624" y="592" name="XLXI_2" orien="R0" />
        <branch name="s(1)">
            <wire x2="496" y1="560" y2="560" x1="464" />
            <wire x2="624" y1="560" y2="560" x1="496" />
            <wire x2="496" y1="560" y2="816" x1="496" />
            <wire x2="1024" y1="816" y2="816" x1="496" />
            <wire x2="496" y1="816" y2="960" x1="496" />
            <wire x2="1024" y1="960" y2="960" x1="496" />
        </branch>
        <instance x="1024" y="592" name="XLXI_3" orien="R0" />
        <instance x="1024" y="736" name="XLXI_4" orien="R0" />
        <instance x="1024" y="880" name="XLXI_5" orien="R0" />
        <instance x="1024" y="1024" name="XLXI_6" orien="R0" />
        <branch name="XLXN_6">
            <wire x2="960" y1="464" y2="464" x1="848" />
            <wire x2="1024" y1="464" y2="464" x1="960" />
            <wire x2="960" y1="464" y2="752" x1="960" />
            <wire x2="1024" y1="752" y2="752" x1="960" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="912" y1="560" y2="560" x1="848" />
            <wire x2="912" y1="560" y2="672" x1="912" />
            <wire x2="1024" y1="672" y2="672" x1="912" />
            <wire x2="912" y1="528" y2="560" x1="912" />
            <wire x2="1024" y1="528" y2="528" x1="912" />
        </branch>
        <branch name="s(0)">
            <wire x2="560" y1="464" y2="464" x1="464" />
            <wire x2="624" y1="464" y2="464" x1="560" />
            <wire x2="560" y1="464" y2="608" x1="560" />
            <wire x2="1024" y1="608" y2="608" x1="560" />
            <wire x2="560" y1="608" y2="896" x1="560" />
            <wire x2="1024" y1="896" y2="896" x1="560" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1424" y1="496" y2="496" x1="1280" />
            <wire x2="2016" y1="496" y2="496" x1="1424" />
            <wire x2="1424" y1="496" y2="1056" x1="1424" />
            <wire x2="2016" y1="1056" y2="1056" x1="1424" />
            <wire x2="1424" y1="1056" y2="1616" x1="1424" />
            <wire x2="2016" y1="1616" y2="1616" x1="1424" />
            <wire x2="1424" y1="1616" y2="2176" x1="1424" />
            <wire x2="2016" y1="2176" y2="2176" x1="1424" />
        </branch>
        <iomarker fontsize="28" x="240" y="512" name="s(1:0)" orien="R180" />
        <branch name="I0(3:0)">
            <wire x2="1520" y1="1328" y2="1328" x1="272" />
            <wire x2="1520" y1="1328" y2="1680" x1="1520" />
            <wire x2="1808" y1="1680" y2="1680" x1="1520" />
            <wire x2="1808" y1="1680" y2="1696" x1="1808" />
            <wire x2="1520" y1="1680" y2="2240" x1="1520" />
            <wire x2="1808" y1="2240" y2="2240" x1="1520" />
            <wire x2="1808" y1="2240" y2="2256" x1="1808" />
            <wire x2="1792" y1="560" y2="560" x1="1520" />
            <wire x2="1792" y1="560" y2="576" x1="1792" />
            <wire x2="1520" y1="560" y2="1120" x1="1520" />
            <wire x2="1520" y1="1120" y2="1328" x1="1520" />
            <wire x2="1792" y1="1120" y2="1120" x1="1520" />
            <wire x2="1792" y1="1120" y2="1136" x1="1792" />
            <wire x2="1792" y1="544" y2="560" x1="1792" />
            <wire x2="1792" y1="1104" y2="1120" x1="1792" />
            <wire x2="1808" y1="1664" y2="1680" x1="1808" />
            <wire x2="1808" y1="2224" y2="2240" x1="1808" />
        </branch>
        <branch name="I3(3:0)">
            <wire x2="1616" y1="1568" y2="1568" x1="272" />
            <wire x2="1616" y1="1568" y2="2064" x1="1616" />
            <wire x2="1616" y1="2064" y2="2624" x1="1616" />
            <wire x2="1808" y1="2624" y2="2624" x1="1616" />
            <wire x2="1808" y1="2624" y2="2640" x1="1808" />
            <wire x2="1808" y1="2064" y2="2064" x1="1616" />
            <wire x2="1808" y1="2064" y2="2080" x1="1808" />
            <wire x2="1792" y1="944" y2="944" x1="1616" />
            <wire x2="1792" y1="944" y2="960" x1="1792" />
            <wire x2="1616" y1="944" y2="1504" x1="1616" />
            <wire x2="1616" y1="1504" y2="1568" x1="1616" />
            <wire x2="1792" y1="1504" y2="1504" x1="1616" />
            <wire x2="1792" y1="1504" y2="1520" x1="1792" />
            <wire x2="1792" y1="928" y2="944" x1="1792" />
            <wire x2="1792" y1="1488" y2="1504" x1="1792" />
            <wire x2="1808" y1="2048" y2="2064" x1="1808" />
            <wire x2="1808" y1="2608" y2="2624" x1="1808" />
        </branch>
        <branch name="I2(3:0)">
            <wire x2="1584" y1="1488" y2="1488" x1="272" />
            <wire x2="1584" y1="1488" y2="1936" x1="1584" />
            <wire x2="1584" y1="1936" y2="2496" x1="1584" />
            <wire x2="1808" y1="2496" y2="2496" x1="1584" />
            <wire x2="1808" y1="2496" y2="2512" x1="1808" />
            <wire x2="1808" y1="1936" y2="1936" x1="1584" />
            <wire x2="1808" y1="1936" y2="1952" x1="1808" />
            <wire x2="1792" y1="816" y2="816" x1="1584" />
            <wire x2="1792" y1="816" y2="832" x1="1792" />
            <wire x2="1584" y1="816" y2="1376" x1="1584" />
            <wire x2="1584" y1="1376" y2="1488" x1="1584" />
            <wire x2="1792" y1="1376" y2="1376" x1="1584" />
            <wire x2="1792" y1="1376" y2="1392" x1="1792" />
            <wire x2="1792" y1="800" y2="816" x1="1792" />
            <wire x2="1792" y1="1360" y2="1376" x1="1792" />
            <wire x2="1808" y1="1920" y2="1936" x1="1808" />
            <wire x2="1808" y1="2480" y2="2496" x1="1808" />
        </branch>
        <branch name="XLXN_56">
            <wire x2="1392" y1="640" y2="640" x1="1280" />
            <wire x2="1392" y1="640" y2="1184" x1="1392" />
            <wire x2="2016" y1="1184" y2="1184" x1="1392" />
            <wire x2="1392" y1="1184" y2="1744" x1="1392" />
            <wire x2="2016" y1="1744" y2="1744" x1="1392" />
            <wire x2="1392" y1="1744" y2="2304" x1="1392" />
            <wire x2="2016" y1="2304" y2="2304" x1="1392" />
            <wire x2="2016" y1="624" y2="624" x1="1392" />
            <wire x2="1392" y1="624" y2="640" x1="1392" />
        </branch>
        <branch name="XLXN_57">
            <wire x2="1360" y1="784" y2="784" x1="1280" />
            <wire x2="1360" y1="784" y2="1312" x1="1360" />
            <wire x2="2016" y1="1312" y2="1312" x1="1360" />
            <wire x2="1360" y1="1312" y2="1872" x1="1360" />
            <wire x2="2016" y1="1872" y2="1872" x1="1360" />
            <wire x2="1360" y1="1872" y2="2432" x1="1360" />
            <wire x2="2016" y1="2432" y2="2432" x1="1360" />
            <wire x2="2016" y1="752" y2="752" x1="1360" />
            <wire x2="1360" y1="752" y2="784" x1="1360" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="1328" y1="928" y2="928" x1="1280" />
            <wire x2="1328" y1="928" y2="1440" x1="1328" />
            <wire x2="2016" y1="1440" y2="1440" x1="1328" />
            <wire x2="1328" y1="1440" y2="2000" x1="1328" />
            <wire x2="2016" y1="2000" y2="2000" x1="1328" />
            <wire x2="1328" y1="2000" y2="2560" x1="1328" />
            <wire x2="2016" y1="2560" y2="2560" x1="1328" />
            <wire x2="2016" y1="880" y2="880" x1="1328" />
            <wire x2="1328" y1="880" y2="928" x1="1328" />
        </branch>
        <branch name="I1(3:0)">
            <wire x2="1552" y1="1408" y2="1408" x1="272" />
            <wire x2="1552" y1="1408" y2="1808" x1="1552" />
            <wire x2="1808" y1="1808" y2="1808" x1="1552" />
            <wire x2="1808" y1="1808" y2="1824" x1="1808" />
            <wire x2="1552" y1="1808" y2="2368" x1="1552" />
            <wire x2="1808" y1="2368" y2="2368" x1="1552" />
            <wire x2="1808" y1="2368" y2="2384" x1="1808" />
            <wire x2="1792" y1="688" y2="688" x1="1552" />
            <wire x2="1792" y1="688" y2="704" x1="1792" />
            <wire x2="1552" y1="688" y2="1248" x1="1552" />
            <wire x2="1792" y1="1248" y2="1248" x1="1552" />
            <wire x2="1792" y1="1248" y2="1264" x1="1792" />
            <wire x2="1552" y1="1248" y2="1408" x1="1552" />
            <wire x2="1792" y1="672" y2="688" x1="1792" />
            <wire x2="1792" y1="1232" y2="1248" x1="1792" />
            <wire x2="1808" y1="1792" y2="1808" x1="1808" />
            <wire x2="1808" y1="2352" y2="2368" x1="1808" />
        </branch>
        <iomarker fontsize="28" x="272" y="1328" name="I0(3:0)" orien="R180" />
        <iomarker fontsize="28" x="272" y="1408" name="I1(3:0)" orien="R180" />
        <iomarker fontsize="28" x="272" y="1488" name="I2(3:0)" orien="R180" />
        <iomarker fontsize="28" x="272" y="1568" name="I3(3:0)" orien="R180" />
        <bustap x2="1888" y1="560" y2="560" x1="1792" />
        <branch name="I0(0)">
            <wire x2="2016" y1="560" y2="560" x1="1888" />
        </branch>
        <bustap x2="1888" y1="688" y2="688" x1="1792" />
        <bustap x2="1888" y1="816" y2="816" x1="1792" />
        <bustap x2="1888" y1="944" y2="944" x1="1792" />
        <bustap x2="1888" y1="1120" y2="1120" x1="1792" />
        <bustap x2="1888" y1="1248" y2="1248" x1="1792" />
        <bustap x2="1888" y1="1376" y2="1376" x1="1792" />
        <bustap x2="1888" y1="1504" y2="1504" x1="1792" />
        <bustap x2="1904" y1="1680" y2="1680" x1="1808" />
        <bustap x2="1904" y1="1808" y2="1808" x1="1808" />
        <bustap x2="1904" y1="1936" y2="1936" x1="1808" />
        <bustap x2="1904" y1="2064" y2="2064" x1="1808" />
        <bustap x2="1904" y1="2240" y2="2240" x1="1808" />
        <bustap x2="1904" y1="2368" y2="2368" x1="1808" />
        <bustap x2="1904" y1="2496" y2="2496" x1="1808" />
        <bustap x2="1904" y1="2624" y2="2624" x1="1808" />
        <branch name="I1(0)">
            <wire x2="2016" y1="688" y2="688" x1="1888" />
        </branch>
        <branch name="I2(0)">
            <wire x2="2016" y1="816" y2="816" x1="1888" />
        </branch>
        <branch name="I3(0)">
            <wire x2="2016" y1="944" y2="944" x1="1888" />
        </branch>
        <branch name="I0(1)">
            <wire x2="2016" y1="1120" y2="1120" x1="1888" />
        </branch>
        <branch name="I1(1)">
            <wire x2="2016" y1="1248" y2="1248" x1="1888" />
        </branch>
        <branch name="I2(1)">
            <wire x2="2016" y1="1376" y2="1376" x1="1888" />
        </branch>
        <branch name="I3(1)">
            <wire x2="2016" y1="1504" y2="1504" x1="1888" />
        </branch>
        <branch name="I0(2)">
            <wire x2="2016" y1="1680" y2="1680" x1="1904" />
        </branch>
        <branch name="I1(2)">
            <wire x2="2016" y1="1808" y2="1808" x1="1904" />
        </branch>
        <branch name="I2(2)">
            <wire x2="2016" y1="1936" y2="1936" x1="1904" />
        </branch>
        <branch name="I3(2)">
            <wire x2="2016" y1="2064" y2="2064" x1="1904" />
        </branch>
        <branch name="I0(3)">
            <wire x2="2016" y1="2240" y2="2240" x1="1904" />
        </branch>
        <branch name="I1(3)">
            <wire x2="2016" y1="2368" y2="2368" x1="1904" />
        </branch>
        <branch name="I2(3)">
            <wire x2="2016" y1="2496" y2="2496" x1="1904" />
        </branch>
        <branch name="I3(3)">
            <wire x2="2016" y1="2624" y2="2624" x1="1904" />
        </branch>
        <branch name="o(3:0)">
            <wire x2="3040" y1="704" y2="720" x1="3040" />
            <wire x2="3040" y1="720" y2="1280" x1="3040" />
            <wire x2="3040" y1="1280" y2="1552" x1="3040" />
            <wire x2="3200" y1="1552" y2="1552" x1="3040" />
            <wire x2="3040" y1="1552" y2="1840" x1="3040" />
            <wire x2="3040" y1="1840" y2="2400" x1="3040" />
            <wire x2="3040" y1="2400" y2="2416" x1="3040" />
        </branch>
        <iomarker fontsize="28" x="3200" y="1552" name="o(3:0)" orien="R0" />
        <bustap x2="2944" y1="720" y2="720" x1="3040" />
        <bustap x2="2944" y1="1280" y2="1280" x1="3040" />
        <bustap x2="2944" y1="1840" y2="1840" x1="3040" />
        <bustap x2="2944" y1="2400" y2="2400" x1="3040" />
        <branch name="o(0)">
            <wire x2="2944" y1="720" y2="720" x1="2752" />
        </branch>
        <branch name="o(1)">
            <wire x2="2944" y1="1280" y2="1280" x1="2752" />
        </branch>
        <branch name="o(2)">
            <wire x2="2944" y1="1840" y2="1840" x1="2752" />
        </branch>
        <branch name="o(3)">
            <wire x2="2944" y1="2400" y2="2400" x1="2752" />
        </branch>
    </sheet>
</drawing>