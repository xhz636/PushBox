<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="AN(3:0)" />
        <signal name="Hex(3:0)" />
        <signal name="Hex(3)" />
        <signal name="Hex(2)" />
        <signal name="Hex(1)" />
        <signal name="Hex(0)" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="XLXN_9" />
        <signal name="SEGMENT(7:0)" />
        <signal name="SEGMENT(0)" />
        <signal name="SEGMENT(1)" />
        <signal name="SEGMENT(2)" />
        <signal name="SEGMENT(3)" />
        <signal name="SEGMENT(4)" />
        <signal name="SEGMENT(5)" />
        <signal name="SEGMENT(6)" />
        <signal name="SEGMENT(7)" />
        <signal name="Scan(1:0)" />
        <signal name="Hexs(15:0)" />
        <signal name="point(3:0)" />
        <signal name="LES(3:0)" />
        <port polarity="Output" name="AN(3:0)" />
        <port polarity="Output" name="SEGMENT(7:0)" />
        <port polarity="Input" name="Scan(1:0)" />
        <port polarity="Input" name="Hexs(15:0)" />
        <port polarity="Input" name="point(3:0)" />
        <port polarity="Input" name="LES(3:0)" />
        <blockdef name="MC14495_ZJU_sch">
            <timestamp>2015-10-28T11:37:36</timestamp>
            <rect width="256" x="64" y="-512" height="512" />
            <line x2="0" y1="-480" y2="-480" x1="64" />
            <line x2="0" y1="-400" y2="-400" x1="64" />
            <line x2="0" y1="-320" y2="-320" x1="64" />
            <line x2="0" y1="-240" y2="-240" x1="64" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
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
        <blockdef name="ScanSync">
            <timestamp>2015-11-4T11:37:39</timestamp>
            <rect width="256" x="64" y="-256" height="256" />
            <rect width="64" x="0" y="-236" height="24" />
            <line x2="0" y1="-224" y2="-224" x1="64" />
            <rect width="64" x="0" y="-172" height="24" />
            <line x2="0" y1="-160" y2="-160" x1="64" />
            <rect width="64" x="0" y="-108" height="24" />
            <line x2="0" y1="-96" y2="-96" x1="64" />
            <rect width="64" x="0" y="-44" height="24" />
            <line x2="0" y1="-32" y2="-32" x1="64" />
            <rect width="64" x="320" y="-236" height="24" />
            <line x2="384" y1="-224" y2="-224" x1="320" />
            <rect width="64" x="320" y="-172" height="24" />
            <line x2="384" y1="-160" y2="-160" x1="320" />
            <line x2="384" y1="-96" y2="-96" x1="320" />
            <line x2="384" y1="-32" y2="-32" x1="320" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="MC14495_ZJU_sch" name="XLXI_1">
            <blockpin signalname="Hex(3)" name="D3" />
            <blockpin signalname="Hex(2)" name="D2" />
            <blockpin signalname="Hex(1)" name="D1" />
            <blockpin signalname="Hex(0)" name="D0" />
            <blockpin signalname="XLXN_7" name="point" />
            <blockpin signalname="XLXN_9" name="LE" />
            <blockpin signalname="SEGMENT(0)" name="a" />
            <blockpin signalname="SEGMENT(1)" name="b" />
            <blockpin signalname="SEGMENT(2)" name="c" />
            <blockpin signalname="SEGMENT(3)" name="d" />
            <blockpin signalname="SEGMENT(4)" name="e" />
            <blockpin signalname="SEGMENT(5)" name="f" />
            <blockpin signalname="SEGMENT(6)" name="g" />
            <blockpin signalname="SEGMENT(7)" name="p" />
        </block>
        <block symbolname="ScanSync" name="XLXI_2">
            <blockpin signalname="Scan(1:0)" name="Scan(1:0)" />
            <blockpin signalname="Hexs(15:0)" name="Hexs(15:0)" />
            <blockpin signalname="point(3:0)" name="point(3:0)" />
            <blockpin signalname="LES(3:0)" name="LES(3:0)" />
            <blockpin signalname="AN(3:0)" name="AN(3:0)" />
            <blockpin signalname="Hex(3:0)" name="Hex(3:0)" />
            <blockpin signalname="XLXN_8" name="LE" />
            <blockpin signalname="XLXN_7" name="p" />
        </block>
        <block symbolname="inv" name="XLXI_3">
            <blockpin signalname="XLXN_8" name="I" />
            <blockpin signalname="XLXN_9" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="912" y="608" name="XLXI_2" orien="R0">
        </instance>
        <instance x="1696" y="944" name="XLXI_1" orien="R0">
        </instance>
        <branch name="AN(3:0)">
            <wire x2="1328" y1="384" y2="384" x1="1296" />
        </branch>
        <iomarker fontsize="28" x="1328" y="384" name="AN(3:0)" orien="R0" />
        <branch name="Hex(3:0)">
            <wire x2="1472" y1="448" y2="448" x1="1296" />
            <wire x2="1472" y1="448" y2="464" x1="1472" />
            <wire x2="1472" y1="464" y2="544" x1="1472" />
            <wire x2="1472" y1="544" y2="624" x1="1472" />
            <wire x2="1472" y1="624" y2="704" x1="1472" />
            <wire x2="1472" y1="704" y2="720" x1="1472" />
        </branch>
        <bustap x2="1568" y1="464" y2="464" x1="1472" />
        <bustap x2="1568" y1="544" y2="544" x1="1472" />
        <bustap x2="1568" y1="624" y2="624" x1="1472" />
        <bustap x2="1568" y1="704" y2="704" x1="1472" />
        <branch name="Hex(3)">
            <wire x2="1696" y1="464" y2="464" x1="1568" />
        </branch>
        <branch name="Hex(2)">
            <wire x2="1696" y1="544" y2="544" x1="1568" />
        </branch>
        <branch name="Hex(1)">
            <wire x2="1696" y1="624" y2="624" x1="1568" />
        </branch>
        <branch name="Hex(0)">
            <wire x2="1696" y1="704" y2="704" x1="1568" />
        </branch>
        <branch name="XLXN_7">
            <wire x2="1456" y1="576" y2="576" x1="1296" />
            <wire x2="1456" y1="576" y2="784" x1="1456" />
            <wire x2="1696" y1="784" y2="784" x1="1456" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1424" y1="512" y2="512" x1="1296" />
            <wire x2="1424" y1="512" y2="864" x1="1424" />
            <wire x2="1456" y1="864" y2="864" x1="1424" />
        </branch>
        <instance x="1456" y="896" name="XLXI_3" orien="R0" />
        <branch name="XLXN_9">
            <wire x2="1696" y1="864" y2="864" x1="1680" />
        </branch>
        <branch name="SEGMENT(7:0)">
            <wire x2="2416" y1="448" y2="464" x1="2416" />
            <wire x2="2416" y1="464" y2="528" x1="2416" />
            <wire x2="2416" y1="528" y2="592" x1="2416" />
            <wire x2="2416" y1="592" y2="656" x1="2416" />
            <wire x2="2416" y1="656" y2="688" x1="2416" />
            <wire x2="2560" y1="688" y2="688" x1="2416" />
            <wire x2="2416" y1="688" y2="720" x1="2416" />
            <wire x2="2416" y1="720" y2="784" x1="2416" />
            <wire x2="2416" y1="784" y2="848" x1="2416" />
            <wire x2="2416" y1="848" y2="912" x1="2416" />
            <wire x2="2416" y1="912" y2="928" x1="2416" />
        </branch>
        <iomarker fontsize="28" x="2560" y="688" name="SEGMENT(7:0)" orien="R0" />
        <bustap x2="2320" y1="464" y2="464" x1="2416" />
        <bustap x2="2320" y1="528" y2="528" x1="2416" />
        <bustap x2="2320" y1="592" y2="592" x1="2416" />
        <bustap x2="2320" y1="656" y2="656" x1="2416" />
        <bustap x2="2320" y1="720" y2="720" x1="2416" />
        <bustap x2="2320" y1="784" y2="784" x1="2416" />
        <bustap x2="2320" y1="848" y2="848" x1="2416" />
        <bustap x2="2320" y1="912" y2="912" x1="2416" />
        <branch name="SEGMENT(0)">
            <wire x2="2320" y1="464" y2="464" x1="2080" />
        </branch>
        <branch name="SEGMENT(1)">
            <wire x2="2320" y1="528" y2="528" x1="2080" />
        </branch>
        <branch name="SEGMENT(2)">
            <wire x2="2320" y1="592" y2="592" x1="2080" />
        </branch>
        <branch name="SEGMENT(3)">
            <wire x2="2320" y1="656" y2="656" x1="2080" />
        </branch>
        <branch name="SEGMENT(4)">
            <wire x2="2320" y1="720" y2="720" x1="2080" />
        </branch>
        <branch name="SEGMENT(5)">
            <wire x2="2320" y1="784" y2="784" x1="2080" />
        </branch>
        <branch name="SEGMENT(6)">
            <wire x2="2320" y1="848" y2="848" x1="2080" />
        </branch>
        <branch name="SEGMENT(7)">
            <wire x2="2320" y1="912" y2="912" x1="2080" />
        </branch>
        <branch name="Scan(1:0)">
            <wire x2="912" y1="384" y2="384" x1="880" />
        </branch>
        <iomarker fontsize="28" x="880" y="384" name="Scan(1:0)" orien="R180" />
        <branch name="Hexs(15:0)">
            <wire x2="912" y1="448" y2="448" x1="880" />
        </branch>
        <iomarker fontsize="28" x="880" y="448" name="Hexs(15:0)" orien="R180" />
        <branch name="point(3:0)">
            <wire x2="912" y1="512" y2="512" x1="880" />
        </branch>
        <iomarker fontsize="28" x="880" y="512" name="point(3:0)" orien="R180" />
        <branch name="LES(3:0)">
            <wire x2="912" y1="576" y2="576" x1="880" />
        </branch>
        <iomarker fontsize="28" x="880" y="576" name="LES(3:0)" orien="R180" />
    </sheet>
</drawing>