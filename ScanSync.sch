<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="Scan(1:0)" />
        <signal name="Hexs(15:0)" />
        <signal name="Hexs(3:0)" />
        <signal name="Hexs(7:4)" />
        <signal name="Hexs(11:8)" />
        <signal name="Hexs(15:12)" />
        <signal name="point(3:0)" />
        <signal name="LES(3:0)" />
        <signal name="V5" />
        <signal name="G0" />
        <signal name="LES(0),point(0),G0,G0" />
        <signal name="LES(1),point(1),G0,G0" />
        <signal name="LES(2),point(2),G0,G0" />
        <signal name="LES(3),point(3),G0,G0" />
        <signal name="V5,V5,V5,G0" />
        <signal name="V5,V5,G0,V5" />
        <signal name="V5,G0,V5,V5" />
        <signal name="G0,V5,V5,V5" />
        <signal name="AN(3:0)" />
        <signal name="Hex(3:0)" />
        <signal name="o(3:0)" />
        <signal name="o(3)" />
        <signal name="o(2)" />
        <signal name="LE" />
        <signal name="p" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="Hex(3:0)" />
        <port polarity="Output" name="LE" />
        <port polarity="Output" name="p" />
        <blockdef name="MUX4T1_4">
            <timestamp>2015-11-4T11:32:48</timestamp>
            <rect width="256" x="64" y="-320" height="320" />
            <rect width="64" x="0" y="-300" height="24" />
            <line x2="0" y1="-288" y2="-288" x1="64" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
        </blockdef>
        <blockdef name="vcc">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-64" x1="64" />
            <line x2="64" y1="0" y2="-32" x1="64" />
            <line x2="32" y1="-64" y2="-64" x1="96" />
        </blockdef>
        <blockdef name="gnd">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-96" x1="64" />
            <line x2="52" y1="-48" y2="-48" x1="76" />
            <line x2="60" y1="-32" y2="-32" x1="68" />
            <line x2="40" y1="-64" y2="-64" x1="88" />
            <line x2="64" y1="-64" y2="-80" x1="64" />
            <line x2="64" y1="-128" y2="-96" x1="64" />
        </blockdef>
        <blockdef name="buf">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="128" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="0" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="-64" x1="128" />
            <line x2="64" y1="-64" y2="0" x1="64" />
        </blockdef>
        <block symbolname="MUX4T1_4" name="XLXI_1">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="Hexs(3:0)" name="I0(3:0)" />
            <blockpin signalname="Hexs(7:4)" name="I1(3:0)" />
            <blockpin signalname="Hexs(11:8)" name="I2(3:0)" />
            <blockpin signalname="Hexs(15:12)" name="I3(3:0)" />
            <blockpin signalname="Hex(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="MUX4T1_4" name="XLXI_2">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="LES(0),point(0),G0,G0" name="I0(3:0)" />
            <blockpin signalname="LES(1),point(1),G0,G0" name="I1(3:0)" />
            <blockpin signalname="LES(2),point(2),G0,G0" name="I2(3:0)" />
            <blockpin signalname="LES(3),point(3),G0,G0" name="I3(3:0)" />
            <blockpin signalname="o(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="MUX4T1_4" name="XLXI_3">
            <blockpin signalname="Scan(1:0)" name="s(1:0)" />
            <blockpin signalname="V5,V5,V5,G0" name="I0(3:0)" />
            <blockpin signalname="V5,V5,G0,V5" name="I1(3:0)" />
            <blockpin signalname="V5,G0,V5,V5" name="I2(3:0)" />
            <blockpin signalname="G0,V5,V5,V5" name="I3(3:0)" />
            <blockpin signalname="AN(3:0)" name="o(3:0)" />
        </block>
        <block symbolname="vcc" name="XLXI_4">
            <blockpin signalname="V5" name="P" />
        </block>
        <block symbolname="gnd" name="XLXI_5">
            <blockpin signalname="G0" name="G" />
        </block>
        <block symbolname="buf" name="XLXI_6">
            <blockpin signalname="o(3)" name="I" />
            <blockpin signalname="LE" name="O" />
        </block>
        <block symbolname="buf" name="XLXI_7">
            <blockpin signalname="o(2)" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1456" y="592" name="XLXI_1" orien="R0">
        </instance>
        <instance x="1456" y="1200" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1456" y="1840" name="XLXI_3" orien="R0">
        </instance>
        <branch name="Scan(1:0)">
            <wire x2="1360" y1="160" y2="160" x1="560" />
            <wire x2="1360" y1="160" y2="304" x1="1360" />
            <wire x2="1456" y1="304" y2="304" x1="1360" />
            <wire x2="1360" y1="304" y2="912" x1="1360" />
            <wire x2="1360" y1="912" y2="1552" x1="1360" />
            <wire x2="1456" y1="1552" y2="1552" x1="1360" />
            <wire x2="1456" y1="912" y2="912" x1="1360" />
        </branch>
        <iomarker fontsize="28" x="560" y="160" name="Scan(1:0)" orien="R180" />
        <branch name="Hexs(15:0)">
            <wire x2="880" y1="464" y2="464" x1="560" />
            <wire x2="880" y1="464" y2="496" x1="880" />
            <wire x2="880" y1="496" y2="560" x1="880" />
            <wire x2="880" y1="560" y2="576" x1="880" />
            <wire x2="880" y1="368" y2="432" x1="880" />
            <wire x2="880" y1="432" y2="464" x1="880" />
        </branch>
        <iomarker fontsize="28" x="560" y="464" name="Hexs(15:0)" orien="R180" />
        <bustap x2="976" y1="496" y2="496" x1="880" />
        <bustap x2="976" y1="432" y2="432" x1="880" />
        <bustap x2="976" y1="368" y2="368" x1="880" />
        <branch name="Hexs(3:0)">
            <wire x2="1456" y1="368" y2="368" x1="976" />
        </branch>
        <branch name="Hexs(7:4)">
            <wire x2="1456" y1="432" y2="432" x1="976" />
        </branch>
        <branch name="Hexs(11:8)">
            <wire x2="1456" y1="496" y2="496" x1="976" />
        </branch>
        <branch name="Hexs(15:12)">
            <wire x2="1456" y1="560" y2="560" x1="976" />
        </branch>
        <branch name="point(3:0)">
            <wire x2="640" y1="640" y2="640" x1="560" />
        </branch>
        <branch name="LES(3:0)">
            <wire x2="640" y1="720" y2="720" x1="560" />
        </branch>
        <bustap x2="976" y1="560" y2="560" x1="880" />
        <instance x="496" y="864" name="XLXI_4" orien="R0" />
        <instance x="576" y="1024" name="XLXI_5" orien="R0" />
        <branch name="V5">
            <attrtext style="alignment:SOFT-VRIGHT;fontsize:28;fontname:Arial" attrname="Name" x="560" y="912" type="branch" />
            <wire x2="560" y1="864" y2="912" x1="560" />
        </branch>
        <branch name="G0">
            <attrtext style="alignment:SOFT-VLEFT;fontsize:28;fontname:Arial" attrname="Name" x="640" y="848" type="branch" />
            <wire x2="640" y1="848" y2="896" x1="640" />
        </branch>
        <iomarker fontsize="28" x="560" y="640" name="point(3:0)" orien="R180" />
        <iomarker fontsize="28" x="560" y="720" name="LES(3:0)" orien="R180" />
        <branch name="LES(0),point(0),G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="976" type="branch" />
            <wire x2="1456" y1="976" y2="976" x1="1072" />
        </branch>
        <branch name="LES(1),point(1),G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1040" type="branch" />
            <wire x2="1456" y1="1040" y2="1040" x1="1072" />
        </branch>
        <branch name="LES(2),point(2),G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1104" type="branch" />
            <wire x2="1456" y1="1104" y2="1104" x1="1072" />
        </branch>
        <branch name="LES(3),point(3),G0,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1072" y="1168" type="branch" />
            <wire x2="1456" y1="1168" y2="1168" x1="1072" />
        </branch>
        <branch name="V5,V5,V5,G0">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1616" type="branch" />
            <wire x2="1456" y1="1616" y2="1616" x1="1120" />
        </branch>
        <branch name="V5,V5,G0,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1680" type="branch" />
            <wire x2="1456" y1="1680" y2="1680" x1="1120" />
        </branch>
        <branch name="V5,G0,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1744" type="branch" />
            <wire x2="1456" y1="1744" y2="1744" x1="1120" />
        </branch>
        <branch name="G0,V5,V5,V5">
            <attrtext style="alignment:SOFT-RIGHT;fontsize:28;fontname:Arial" attrname="Name" x="1120" y="1808" type="branch" />
            <wire x2="1456" y1="1808" y2="1808" x1="1120" />
        </branch>
        <branch name="AN(3:0)">
            <wire x2="2368" y1="1680" y2="1680" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="2368" y="1680" name="AN(3:0)" orien="R0" />
        <branch name="Hex(3:0)">
            <wire x2="2608" y1="432" y2="432" x1="1840" />
        </branch>
        <iomarker fontsize="28" x="2608" y="432" name="Hex(3:0)" orien="R0" />
        <branch name="o(3:0)">
            <wire x2="2368" y1="1040" y2="1040" x1="1840" />
            <wire x2="2368" y1="1040" y2="1104" x1="2368" />
            <wire x2="2368" y1="1104" y2="1120" x1="2368" />
            <wire x2="2368" y1="960" y2="976" x1="2368" />
            <wire x2="2368" y1="976" y2="1040" x1="2368" />
        </branch>
        <branch name="o(3)">
            <wire x2="2592" y1="976" y2="976" x1="2464" />
        </branch>
        <branch name="o(2)">
            <wire x2="2592" y1="1104" y2="1104" x1="2464" />
        </branch>
        <branch name="LE">
            <wire x2="2848" y1="976" y2="976" x1="2816" />
        </branch>
        <branch name="p">
            <wire x2="2848" y1="1104" y2="1104" x1="2816" />
        </branch>
        <instance x="2592" y="1008" name="XLXI_6" orien="R0" />
        <instance x="2592" y="1136" name="XLXI_7" orien="R0" />
        <bustap x2="2464" y1="976" y2="976" x1="2368" />
        <bustap x2="2464" y1="1104" y2="1104" x1="2368" />
        <iomarker fontsize="28" x="2848" y="976" name="LE" orien="R0" />
        <iomarker fontsize="28" x="2848" y="1104" name="p" orien="R0" />
    </sheet>
</drawing>