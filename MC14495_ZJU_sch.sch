<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D3" />
        <signal name="D2" />
        <signal name="D1" />
        <signal name="D0" />
        <signal name="a" />
        <signal name="b" />
        <signal name="c" />
        <signal name="d" />
        <signal name="e" />
        <signal name="f" />
        <signal name="g" />
        <signal name="point" />
        <signal name="p" />
        <signal name="D3_" />
        <signal name="XLXN_17" />
        <signal name="XLXN_21" />
        <signal name="XLXN_29" />
        <signal name="XLXN_30" />
        <signal name="XLXN_31" />
        <signal name="XLXN_32" />
        <signal name="XLXN_37" />
        <signal name="XLXN_38" />
        <signal name="XLXN_39" />
        <signal name="XLXN_40" />
        <signal name="XLXN_41" />
        <signal name="XLXN_42" />
        <signal name="XLXN_43" />
        <signal name="XLXN_44" />
        <signal name="XLXN_45" />
        <signal name="XLXN_46" />
        <signal name="XLXN_48" />
        <signal name="XLXN_49" />
        <signal name="XLXN_52" />
        <signal name="XLXN_53" />
        <signal name="XLXN_54" />
        <signal name="XLXN_57" />
        <signal name="XLXN_58" />
        <signal name="XLXN_59" />
        <signal name="XLXN_60" />
        <signal name="XLXN_61" />
        <signal name="XLXN_62" />
        <signal name="XLXN_63" />
        <signal name="LE" />
        <signal name="XLXN_64" />
        <signal name="XLXN_67" />
        <signal name="XLXN_70" />
        <signal name="XLXN_72" />
        <signal name="XLXN_73" />
        <signal name="XLXN_76" />
        <signal name="XLXN_77" />
        <signal name="XLXN_78" />
        <signal name="XLXN_79" />
        <port polarity="Input" name="D3" />
        <port polarity="Input" name="D2" />
        <port polarity="Input" name="D1" />
        <port polarity="Input" name="D0" />
        <port polarity="Output" name="a" />
        <port polarity="Output" name="b" />
        <port polarity="Output" name="c" />
        <port polarity="Output" name="d" />
        <port polarity="Output" name="e" />
        <port polarity="Output" name="f" />
        <port polarity="Output" name="g" />
        <port polarity="Input" name="point" />
        <port polarity="Output" name="p" />
        <port polarity="Input" name="LE" />
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <blockdef name="and4">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-112" y2="-112" x1="144" />
            <arc ex="144" ey="-208" sx="144" sy="-112" r="48" cx="144" cy="-160" />
            <line x2="144" y1="-208" y2="-208" x1="64" />
            <line x2="64" y1="-64" y2="-256" x1="64" />
            <line x2="192" y1="-160" y2="-160" x1="256" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-64" y2="-64" x1="0" />
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
        <blockdef name="or3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="48" y1="-64" y2="-64" x1="0" />
            <line x2="72" y1="-128" y2="-128" x1="0" />
            <line x2="48" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <arc ex="192" ey="-128" sx="112" sy="-80" r="88" cx="116" cy="-168" />
            <arc ex="48" ey="-176" sx="48" sy="-80" r="56" cx="16" cy="-128" />
            <line x2="48" y1="-64" y2="-80" x1="48" />
            <line x2="48" y1="-192" y2="-176" x1="48" />
            <line x2="48" y1="-80" y2="-80" x1="112" />
            <arc ex="112" ey="-176" sx="192" sy="-128" r="88" cx="116" cy="-88" />
            <line x2="48" y1="-176" y2="-176" x1="112" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="and3">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="192" y1="-128" y2="-128" x1="256" />
            <line x2="144" y1="-176" y2="-176" x1="64" />
            <line x2="64" y1="-80" y2="-80" x1="144" />
            <arc ex="144" ey="-176" sx="144" sy="-80" r="48" cx="144" cy="-128" />
            <line x2="64" y1="-64" y2="-192" x1="64" />
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
        <block symbolname="and4" name="XLXI_5">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_78" name="I2" />
            <blockpin signalname="D3_" name="I3" />
            <blockpin signalname="XLXN_41" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_6">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3_" name="I3" />
            <blockpin signalname="XLXN_42" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_7">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_78" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_64" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_8">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_67" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_9">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3_" name="I3" />
            <blockpin signalname="XLXN_29" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_13">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_78" name="I2" />
            <blockpin signalname="D3_" name="I3" />
            <blockpin signalname="XLXN_37" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_16">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="XLXN_78" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_40" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_24">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3_" name="I3" />
            <blockpin signalname="XLXN_53" name="O" />
        </block>
        <block symbolname="and4" name="XLXI_25">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="D3" name="I3" />
            <blockpin signalname="XLXN_54" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_1">
            <blockpin signalname="D3" name="I" />
            <blockpin signalname="D3_" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_4">
            <blockpin signalname="D0" name="I" />
            <blockpin signalname="XLXN_17" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_34">
            <blockpin signalname="XLXN_67" name="I0" />
            <blockpin signalname="XLXN_64" name="I1" />
            <blockpin signalname="XLXN_42" name="I2" />
            <blockpin signalname="XLXN_41" name="I3" />
            <blockpin signalname="XLXN_57" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_35">
            <blockpin signalname="XLXN_32" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="XLXN_30" name="I2" />
            <blockpin signalname="XLXN_29" name="I3" />
            <blockpin signalname="XLXN_58" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_36">
            <blockpin signalname="XLXN_38" name="I0" />
            <blockpin signalname="XLXN_31" name="I1" />
            <blockpin signalname="XLXN_37" name="I2" />
            <blockpin signalname="XLXN_59" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_37">
            <blockpin signalname="XLXN_40" name="I0" />
            <blockpin signalname="XLXN_39" name="I1" />
            <blockpin signalname="XLXN_42" name="I2" />
            <blockpin signalname="XLXN_41" name="I3" />
            <blockpin signalname="XLXN_60" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_38">
            <blockpin signalname="XLXN_45" name="I0" />
            <blockpin signalname="XLXN_44" name="I1" />
            <blockpin signalname="XLXN_43" name="I2" />
            <blockpin signalname="XLXN_61" name="O" />
        </block>
        <block symbolname="or3" name="XLXI_39">
            <blockpin signalname="XLXN_54" name="I0" />
            <blockpin signalname="XLXN_53" name="I1" />
            <blockpin signalname="XLXN_52" name="I2" />
            <blockpin signalname="XLXN_63" name="O" />
        </block>
        <block symbolname="or4" name="XLXI_40">
            <blockpin signalname="XLXN_49" name="I0" />
            <blockpin signalname="XLXN_48" name="I1" />
            <blockpin signalname="XLXN_46" name="I2" />
            <blockpin signalname="XLXN_67" name="I3" />
            <blockpin signalname="XLXN_62" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_41">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_57" name="I1" />
            <blockpin signalname="a" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_42">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_58" name="I1" />
            <blockpin signalname="b" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_43">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_59" name="I1" />
            <blockpin signalname="c" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_44">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_60" name="I1" />
            <blockpin signalname="d" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_45">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_61" name="I1" />
            <blockpin signalname="e" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_46">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_62" name="I1" />
            <blockpin signalname="f" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_47">
            <blockpin signalname="LE" name="I0" />
            <blockpin signalname="XLXN_63" name="I1" />
            <blockpin signalname="g" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_49">
            <blockpin signalname="point" name="I" />
            <blockpin signalname="p" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_50">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_30" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_51">
            <blockpin signalname="XLXN_17" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_31" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_52">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_32" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_53">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3" name="I2" />
            <blockpin signalname="XLXN_38" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_54">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D2" name="I2" />
            <blockpin signalname="XLXN_39" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_55">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_21" name="I1" />
            <blockpin signalname="XLXN_78" name="I2" />
            <blockpin signalname="XLXN_45" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_56">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="D2" name="I1" />
            <blockpin signalname="D3_" name="I2" />
            <blockpin signalname="XLXN_44" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_57">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D3_" name="I1" />
            <blockpin signalname="XLXN_43" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_58">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="D1" name="I1" />
            <blockpin signalname="D3_" name="I2" />
            <blockpin signalname="XLXN_49" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_59">
            <blockpin signalname="D1" name="I0" />
            <blockpin signalname="XLXN_78" name="I1" />
            <blockpin signalname="D3_" name="I2" />
            <blockpin signalname="XLXN_48" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_60">
            <blockpin signalname="D0" name="I0" />
            <blockpin signalname="XLXN_78" name="I1" />
            <blockpin signalname="D3_" name="I2" />
            <blockpin signalname="XLXN_46" name="O" />
        </block>
        <block symbolname="and3" name="XLXI_61">
            <blockpin signalname="XLXN_21" name="I0" />
            <blockpin signalname="XLXN_78" name="I1" />
            <blockpin signalname="D3_" name="I2" />
            <blockpin signalname="XLXN_52" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_62">
            <blockpin signalname="D1" name="I" />
            <blockpin signalname="XLXN_21" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_64">
            <blockpin signalname="D2" name="I" />
            <blockpin signalname="XLXN_78" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="7040" height="5440">
        <instance x="1056" y="448" name="XLXI_5" orien="R0" />
        <instance x="1056" y="688" name="XLXI_6" orien="R0" />
        <instance x="1056" y="928" name="XLXI_7" orien="R0" />
        <instance x="1056" y="1168" name="XLXI_8" orien="R0" />
        <instance x="1056" y="1408" name="XLXI_9" orien="R0" />
        <instance x="1056" y="2368" name="XLXI_13" orien="R0" />
        <instance x="1056" y="3088" name="XLXI_16" orien="R0" />
        <instance x="1056" y="5008" name="XLXI_24" orien="R0" />
        <instance x="1056" y="5248" name="XLXI_25" orien="R0" />
        <instance x="432" y="224" name="XLXI_1" orien="R0" />
        <instance x="432" y="640" name="XLXI_4" orien="R0" />
        <instance x="1792" y="800" name="XLXI_34" orien="R0" />
        <instance x="1792" y="2336" name="XLXI_36" orien="R0" />
        <instance x="1808" y="2896" name="XLXI_37" orien="R0" />
        <instance x="1808" y="3536" name="XLXI_38" orien="R0" />
        <instance x="2560" y="768" name="XLXI_41" orien="R0" />
        <instance x="1040" y="5296" name="XLXI_49" orien="R0" />
        <branch name="a">
            <wire x2="2848" y1="672" y2="672" x1="2816" />
        </branch>
        <iomarker fontsize="28" x="2848" y="672" name="a" orien="R0" />
        <branch name="b">
            <wire x2="2864" y1="1648" y2="1648" x1="2832" />
        </branch>
        <branch name="c">
            <wire x2="2848" y1="2240" y2="2240" x1="2816" />
        </branch>
        <branch name="d">
            <wire x2="2848" y1="2768" y2="2768" x1="2816" />
        </branch>
        <branch name="e">
            <wire x2="2832" y1="3440" y2="3440" x1="2800" />
        </branch>
        <branch name="f">
            <wire x2="2800" y1="4112" y2="4112" x1="2768" />
        </branch>
        <branch name="g">
            <wire x2="2784" y1="4880" y2="4880" x1="2752" />
        </branch>
        <branch name="point">
            <wire x2="1040" y1="5264" y2="5264" x1="304" />
        </branch>
        <branch name="p">
            <wire x2="2784" y1="5264" y2="5264" x1="1264" />
        </branch>
        <iomarker fontsize="28" x="2784" y="5264" name="p" orien="R0" />
        <iomarker fontsize="28" x="256" y="192" name="D3" orien="R180" />
        <iomarker fontsize="28" x="256" y="336" name="D2" orien="R180" />
        <iomarker fontsize="28" x="256" y="480" name="D1" orien="R180" />
        <iomarker fontsize="28" x="256" y="608" name="D0" orien="R180" />
        <iomarker fontsize="28" x="304" y="5264" name="point" orien="R180" />
        <instance x="1056" y="1648" name="XLXI_50" orien="R0" />
        <instance x="1056" y="1872" name="XLXI_51" orien="R0" />
        <instance x="1056" y="2096" name="XLXI_52" orien="R0" />
        <branch name="XLXN_29">
            <wire x2="1808" y1="1248" y2="1248" x1="1312" />
            <wire x2="1808" y1="1248" y2="1520" x1="1808" />
        </branch>
        <branch name="XLXN_32">
            <wire x2="1808" y1="1968" y2="1968" x1="1312" />
            <wire x2="1808" y1="1712" y2="1968" x1="1808" />
        </branch>
        <instance x="1808" y="1776" name="XLXI_35" orien="R0" />
        <branch name="XLXN_30">
            <wire x2="1328" y1="1520" y2="1520" x1="1312" />
            <wire x2="1328" y1="1520" y2="1584" x1="1328" />
            <wire x2="1808" y1="1584" y2="1584" x1="1328" />
        </branch>
        <branch name="XLXN_31">
            <wire x2="1328" y1="1744" y2="1744" x1="1312" />
            <wire x2="1680" y1="1744" y2="1744" x1="1328" />
            <wire x2="1680" y1="1744" y2="2208" x1="1680" />
            <wire x2="1792" y1="2208" y2="2208" x1="1680" />
            <wire x2="1808" y1="1648" y2="1648" x1="1328" />
            <wire x2="1328" y1="1648" y2="1744" x1="1328" />
        </branch>
        <instance x="1056" y="2560" name="XLXI_53" orien="R0" />
        <branch name="XLXN_37">
            <wire x2="1600" y1="2208" y2="2208" x1="1312" />
            <wire x2="1792" y1="2144" y2="2144" x1="1600" />
            <wire x2="1600" y1="2144" y2="2208" x1="1600" />
        </branch>
        <branch name="XLXN_38">
            <wire x2="1792" y1="2432" y2="2432" x1="1312" />
            <wire x2="1792" y1="2272" y2="2432" x1="1792" />
        </branch>
        <instance x="1056" y="2800" name="XLXI_54" orien="R0" />
        <branch name="XLXN_39">
            <wire x2="1312" y1="2672" y2="2768" x1="1312" />
            <wire x2="1808" y1="2768" y2="2768" x1="1312" />
        </branch>
        <branch name="XLXN_40">
            <wire x2="1808" y1="2928" y2="2928" x1="1312" />
            <wire x2="1808" y1="2832" y2="2928" x1="1808" />
        </branch>
        <branch name="XLXN_41">
            <wire x2="1456" y1="288" y2="288" x1="1312" />
            <wire x2="1792" y1="288" y2="288" x1="1456" />
            <wire x2="1792" y1="288" y2="544" x1="1792" />
            <wire x2="1456" y1="288" y2="2640" x1="1456" />
            <wire x2="1808" y1="2640" y2="2640" x1="1456" />
        </branch>
        <branch name="XLXN_42">
            <wire x2="1392" y1="528" y2="528" x1="1312" />
            <wire x2="1552" y1="528" y2="528" x1="1392" />
            <wire x2="1552" y1="528" y2="608" x1="1552" />
            <wire x2="1792" y1="608" y2="608" x1="1552" />
            <wire x2="1392" y1="528" y2="2704" x1="1392" />
            <wire x2="1808" y1="2704" y2="2704" x1="1392" />
        </branch>
        <instance x="1056" y="3760" name="XLXI_55" orien="R0" />
        <instance x="1056" y="3536" name="XLXI_56" orien="R0" />
        <instance x="1056" y="3296" name="XLXI_57" orien="R0" />
        <branch name="XLXN_43">
            <wire x2="1808" y1="3200" y2="3200" x1="1312" />
            <wire x2="1808" y1="3200" y2="3344" x1="1808" />
        </branch>
        <branch name="XLXN_44">
            <wire x2="1808" y1="3408" y2="3408" x1="1312" />
        </branch>
        <branch name="XLXN_45">
            <wire x2="1808" y1="3632" y2="3632" x1="1312" />
            <wire x2="1808" y1="3472" y2="3632" x1="1808" />
        </branch>
        <instance x="1056" y="4464" name="XLXI_58" orien="R0" />
        <instance x="1056" y="4240" name="XLXI_59" orien="R0" />
        <instance x="1056" y="4000" name="XLXI_60" orien="R0" />
        <branch name="XLXN_48">
            <wire x2="1824" y1="4112" y2="4112" x1="1312" />
        </branch>
        <branch name="XLXN_49">
            <wire x2="1824" y1="4336" y2="4336" x1="1312" />
            <wire x2="1824" y1="4176" y2="4336" x1="1824" />
        </branch>
        <instance x="1824" y="4240" name="XLXI_40" orien="R0" />
        <branch name="XLXN_46">
            <wire x2="1328" y1="3872" y2="3872" x1="1312" />
            <wire x2="1328" y1="3872" y2="4048" x1="1328" />
            <wire x2="1824" y1="4048" y2="4048" x1="1328" />
        </branch>
        <instance x="1056" y="4720" name="XLXI_61" orien="R0" />
        <branch name="XLXN_52">
            <wire x2="1808" y1="4592" y2="4592" x1="1312" />
            <wire x2="1808" y1="4592" y2="4784" x1="1808" />
        </branch>
        <branch name="XLXN_53">
            <wire x2="1808" y1="4848" y2="4848" x1="1312" />
        </branch>
        <branch name="XLXN_54">
            <wire x2="1808" y1="5088" y2="5088" x1="1312" />
            <wire x2="1808" y1="4912" y2="5088" x1="1808" />
        </branch>
        <instance x="1808" y="4976" name="XLXI_39" orien="R0" />
        <branch name="XLXN_57">
            <wire x2="2560" y1="640" y2="640" x1="2048" />
        </branch>
        <branch name="XLXN_58">
            <wire x2="2576" y1="1616" y2="1616" x1="2064" />
        </branch>
        <branch name="XLXN_59">
            <wire x2="2560" y1="2208" y2="2208" x1="2048" />
        </branch>
        <branch name="XLXN_60">
            <wire x2="2560" y1="2736" y2="2736" x1="2064" />
        </branch>
        <branch name="XLXN_61">
            <wire x2="2544" y1="3408" y2="3408" x1="2064" />
        </branch>
        <branch name="XLXN_62">
            <wire x2="2512" y1="4080" y2="4080" x1="2080" />
        </branch>
        <branch name="XLXN_63">
            <wire x2="2496" y1="4848" y2="4848" x1="2064" />
        </branch>
        <instance x="2496" y="4976" name="XLXI_47" orien="R0" />
        <instance x="2512" y="4208" name="XLXI_46" orien="R0" />
        <iomarker fontsize="28" x="2800" y="4112" name="f" orien="R0" />
        <iomarker fontsize="28" x="2784" y="4880" name="g" orien="R0" />
        <instance x="2544" y="3536" name="XLXI_45" orien="R0" />
        <iomarker fontsize="28" x="2832" y="3440" name="e" orien="R0" />
        <instance x="2560" y="2864" name="XLXI_44" orien="R0" />
        <iomarker fontsize="28" x="2848" y="2768" name="d" orien="R0" />
        <branch name="LE">
            <wire x2="2352" y1="5360" y2="5360" x1="272" />
            <wire x2="2560" y1="704" y2="704" x1="2352" />
            <wire x2="2352" y1="704" y2="1680" x1="2352" />
            <wire x2="2576" y1="1680" y2="1680" x1="2352" />
            <wire x2="2352" y1="1680" y2="2272" x1="2352" />
            <wire x2="2560" y1="2272" y2="2272" x1="2352" />
            <wire x2="2352" y1="2272" y2="2800" x1="2352" />
            <wire x2="2560" y1="2800" y2="2800" x1="2352" />
            <wire x2="2352" y1="2800" y2="3472" x1="2352" />
            <wire x2="2544" y1="3472" y2="3472" x1="2352" />
            <wire x2="2352" y1="3472" y2="4144" x1="2352" />
            <wire x2="2512" y1="4144" y2="4144" x1="2352" />
            <wire x2="2352" y1="4144" y2="4912" x1="2352" />
            <wire x2="2496" y1="4912" y2="4912" x1="2352" />
            <wire x2="2352" y1="4912" y2="5360" x1="2352" />
        </branch>
        <instance x="2576" y="1744" name="XLXI_42" orien="R0" />
        <iomarker fontsize="28" x="2864" y="1648" name="b" orien="R0" />
        <instance x="2560" y="2336" name="XLXI_43" orien="R0" />
        <iomarker fontsize="28" x="2848" y="2240" name="c" orien="R0" />
        <iomarker fontsize="28" x="272" y="5360" name="LE" orien="R180" />
        <branch name="XLXN_64">
            <wire x2="1552" y1="768" y2="768" x1="1312" />
            <wire x2="1552" y1="672" y2="768" x1="1552" />
            <wire x2="1792" y1="672" y2="672" x1="1552" />
        </branch>
        <branch name="XLXN_67">
            <wire x2="1552" y1="1008" y2="1008" x1="1312" />
            <wire x2="1792" y1="1008" y2="1008" x1="1552" />
            <wire x2="1552" y1="1008" y2="3984" x1="1552" />
            <wire x2="1824" y1="3984" y2="3984" x1="1552" />
            <wire x2="1792" y1="736" y2="1008" x1="1792" />
        </branch>
        <branch name="D3">
            <wire x2="368" y1="192" y2="192" x1="256" />
            <wire x2="432" y1="192" y2="192" x1="368" />
            <wire x2="368" y1="192" y2="256" x1="368" />
            <wire x2="752" y1="256" y2="256" x1="368" />
            <wire x2="752" y1="256" y2="672" x1="752" />
            <wire x2="752" y1="672" y2="912" x1="752" />
            <wire x2="752" y1="912" y2="1680" x1="752" />
            <wire x2="1056" y1="1680" y2="1680" x1="752" />
            <wire x2="752" y1="1680" y2="1904" x1="752" />
            <wire x2="1056" y1="1904" y2="1904" x1="752" />
            <wire x2="752" y1="1904" y2="2368" x1="752" />
            <wire x2="1056" y1="2368" y2="2368" x1="752" />
            <wire x2="752" y1="2368" y2="2832" x1="752" />
            <wire x2="752" y1="2832" y2="4992" x1="752" />
            <wire x2="1056" y1="4992" y2="4992" x1="752" />
            <wire x2="1056" y1="2832" y2="2832" x1="752" />
            <wire x2="1056" y1="912" y2="912" x1="752" />
            <wire x2="1056" y1="672" y2="672" x1="752" />
        </branch>
        <branch name="D1">
            <wire x2="368" y1="480" y2="480" x1="256" />
            <wire x2="432" y1="480" y2="480" x1="368" />
            <wire x2="368" y1="480" y2="544" x1="368" />
            <wire x2="688" y1="544" y2="544" x1="368" />
            <wire x2="688" y1="544" y2="800" x1="688" />
            <wire x2="1056" y1="800" y2="800" x1="688" />
            <wire x2="688" y1="800" y2="1520" x1="688" />
            <wire x2="1056" y1="1520" y2="1520" x1="688" />
            <wire x2="688" y1="1520" y2="1968" x1="688" />
            <wire x2="1056" y1="1968" y2="1968" x1="688" />
            <wire x2="688" y1="1968" y2="2240" x1="688" />
            <wire x2="1056" y1="2240" y2="2240" x1="688" />
            <wire x2="688" y1="2240" y2="2496" x1="688" />
            <wire x2="1056" y1="2496" y2="2496" x1="688" />
            <wire x2="688" y1="2496" y2="2672" x1="688" />
            <wire x2="1056" y1="2672" y2="2672" x1="688" />
            <wire x2="688" y1="2672" y2="2960" x1="688" />
            <wire x2="688" y1="2960" y2="4176" x1="688" />
            <wire x2="1056" y1="4176" y2="4176" x1="688" />
            <wire x2="688" y1="4176" y2="4336" x1="688" />
            <wire x2="1056" y1="4336" y2="4336" x1="688" />
            <wire x2="688" y1="4336" y2="4880" x1="688" />
            <wire x2="1056" y1="4880" y2="4880" x1="688" />
            <wire x2="1056" y1="2960" y2="2960" x1="688" />
        </branch>
        <branch name="XLXN_17">
            <wire x2="848" y1="608" y2="608" x1="656" />
            <wire x2="848" y1="608" y2="624" x1="848" />
            <wire x2="1056" y1="624" y2="624" x1="848" />
            <wire x2="848" y1="624" y2="1584" x1="848" />
            <wire x2="1056" y1="1584" y2="1584" x1="848" />
            <wire x2="848" y1="1584" y2="1808" x1="848" />
            <wire x2="1056" y1="1808" y2="1808" x1="848" />
            <wire x2="848" y1="1808" y2="2304" x1="848" />
            <wire x2="1056" y1="2304" y2="2304" x1="848" />
            <wire x2="848" y1="2304" y2="3024" x1="848" />
            <wire x2="848" y1="3024" y2="5184" x1="848" />
            <wire x2="1056" y1="5184" y2="5184" x1="848" />
            <wire x2="1056" y1="3024" y2="3024" x1="848" />
        </branch>
        <branch name="D3_">
            <wire x2="944" y1="192" y2="192" x1="656" />
            <wire x2="1056" y1="192" y2="192" x1="944" />
            <wire x2="944" y1="192" y2="432" x1="944" />
            <wire x2="1056" y1="432" y2="432" x1="944" />
            <wire x2="944" y1="432" y2="1152" x1="944" />
            <wire x2="1056" y1="1152" y2="1152" x1="944" />
            <wire x2="944" y1="1152" y2="2112" x1="944" />
            <wire x2="1056" y1="2112" y2="2112" x1="944" />
            <wire x2="944" y1="2112" y2="3168" x1="944" />
            <wire x2="1056" y1="3168" y2="3168" x1="944" />
            <wire x2="944" y1="3168" y2="3344" x1="944" />
            <wire x2="1056" y1="3344" y2="3344" x1="944" />
            <wire x2="944" y1="3344" y2="3808" x1="944" />
            <wire x2="1056" y1="3808" y2="3808" x1="944" />
            <wire x2="944" y1="3808" y2="4048" x1="944" />
            <wire x2="1056" y1="4048" y2="4048" x1="944" />
            <wire x2="944" y1="4048" y2="4272" x1="944" />
            <wire x2="1056" y1="4272" y2="4272" x1="944" />
            <wire x2="944" y1="4272" y2="4528" x1="944" />
            <wire x2="1056" y1="4528" y2="4528" x1="944" />
            <wire x2="944" y1="4528" y2="4752" x1="944" />
            <wire x2="1056" y1="4752" y2="4752" x1="944" />
        </branch>
        <instance x="432" y="512" name="XLXI_62" orien="R0" />
        <branch name="D0">
            <wire x2="368" y1="608" y2="608" x1="256" />
            <wire x2="432" y1="608" y2="608" x1="368" />
            <wire x2="368" y1="608" y2="688" x1="368" />
            <wire x2="656" y1="688" y2="688" x1="368" />
            <wire x2="656" y1="688" y2="864" x1="656" />
            <wire x2="656" y1="864" y2="1104" x1="656" />
            <wire x2="656" y1="1104" y2="1344" x1="656" />
            <wire x2="1056" y1="1344" y2="1344" x1="656" />
            <wire x2="656" y1="1344" y2="2032" x1="656" />
            <wire x2="1056" y1="2032" y2="2032" x1="656" />
            <wire x2="656" y1="2032" y2="2736" x1="656" />
            <wire x2="1056" y1="2736" y2="2736" x1="656" />
            <wire x2="656" y1="2736" y2="3232" x1="656" />
            <wire x2="1056" y1="3232" y2="3232" x1="656" />
            <wire x2="656" y1="3232" y2="3696" x1="656" />
            <wire x2="1056" y1="3696" y2="3696" x1="656" />
            <wire x2="656" y1="3696" y2="3936" x1="656" />
            <wire x2="1056" y1="3936" y2="3936" x1="656" />
            <wire x2="656" y1="3936" y2="4400" x1="656" />
            <wire x2="1056" y1="4400" y2="4400" x1="656" />
            <wire x2="656" y1="4400" y2="4944" x1="656" />
            <wire x2="1056" y1="4944" y2="4944" x1="656" />
            <wire x2="1056" y1="1104" y2="1104" x1="656" />
            <wire x2="1056" y1="864" y2="864" x1="656" />
            <wire x2="656" y1="384" y2="688" x1="656" />
            <wire x2="1056" y1="384" y2="384" x1="656" />
        </branch>
        <branch name="XLXN_21">
            <wire x2="880" y1="480" y2="480" x1="656" />
            <wire x2="880" y1="480" y2="560" x1="880" />
            <wire x2="1056" y1="560" y2="560" x1="880" />
            <wire x2="880" y1="560" y2="1040" x1="880" />
            <wire x2="880" y1="1040" y2="1280" x1="880" />
            <wire x2="1056" y1="1280" y2="1280" x1="880" />
            <wire x2="880" y1="1280" y2="3472" x1="880" />
            <wire x2="1056" y1="3472" y2="3472" x1="880" />
            <wire x2="880" y1="3472" y2="3632" x1="880" />
            <wire x2="1056" y1="3632" y2="3632" x1="880" />
            <wire x2="880" y1="3632" y2="4656" x1="880" />
            <wire x2="1056" y1="4656" y2="4656" x1="880" />
            <wire x2="880" y1="4656" y2="5120" x1="880" />
            <wire x2="1056" y1="5120" y2="5120" x1="880" />
            <wire x2="1056" y1="1040" y2="1040" x1="880" />
            <wire x2="1056" y1="320" y2="320" x1="880" />
            <wire x2="880" y1="320" y2="480" x1="880" />
        </branch>
        <instance x="432" y="368" name="XLXI_64" orien="R0" />
        <branch name="D2">
            <wire x2="368" y1="336" y2="336" x1="256" />
            <wire x2="432" y1="336" y2="336" x1="368" />
            <wire x2="368" y1="336" y2="416" x1="368" />
            <wire x2="720" y1="416" y2="416" x1="368" />
            <wire x2="720" y1="416" y2="496" x1="720" />
            <wire x2="1056" y1="496" y2="496" x1="720" />
            <wire x2="720" y1="496" y2="976" x1="720" />
            <wire x2="1056" y1="976" y2="976" x1="720" />
            <wire x2="720" y1="976" y2="1216" x1="720" />
            <wire x2="1056" y1="1216" y2="1216" x1="720" />
            <wire x2="720" y1="1216" y2="1456" x1="720" />
            <wire x2="1056" y1="1456" y2="1456" x1="720" />
            <wire x2="720" y1="1456" y2="1744" x1="720" />
            <wire x2="1056" y1="1744" y2="1744" x1="720" />
            <wire x2="720" y1="1744" y2="2432" x1="720" />
            <wire x2="1056" y1="2432" y2="2432" x1="720" />
            <wire x2="720" y1="2432" y2="2608" x1="720" />
            <wire x2="1056" y1="2608" y2="2608" x1="720" />
            <wire x2="720" y1="2608" y2="3408" x1="720" />
            <wire x2="1056" y1="3408" y2="3408" x1="720" />
            <wire x2="720" y1="3408" y2="4816" x1="720" />
            <wire x2="1056" y1="4816" y2="4816" x1="720" />
            <wire x2="720" y1="4816" y2="5056" x1="720" />
            <wire x2="1056" y1="5056" y2="5056" x1="720" />
        </branch>
        <branch name="XLXN_78">
            <wire x2="784" y1="336" y2="336" x1="656" />
            <wire x2="784" y1="272" y2="336" x1="784" />
            <wire x2="928" y1="272" y2="272" x1="784" />
            <wire x2="928" y1="272" y2="736" x1="928" />
            <wire x2="1056" y1="736" y2="736" x1="928" />
            <wire x2="928" y1="736" y2="2176" x1="928" />
            <wire x2="1056" y1="2176" y2="2176" x1="928" />
            <wire x2="928" y1="2176" y2="2896" x1="928" />
            <wire x2="1056" y1="2896" y2="2896" x1="928" />
            <wire x2="928" y1="2896" y2="3568" x1="928" />
            <wire x2="1056" y1="3568" y2="3568" x1="928" />
            <wire x2="928" y1="3568" y2="3872" x1="928" />
            <wire x2="1056" y1="3872" y2="3872" x1="928" />
            <wire x2="928" y1="3872" y2="4112" x1="928" />
            <wire x2="1056" y1="4112" y2="4112" x1="928" />
            <wire x2="928" y1="4112" y2="4592" x1="928" />
            <wire x2="1056" y1="4592" y2="4592" x1="928" />
            <wire x2="1056" y1="256" y2="256" x1="928" />
            <wire x2="928" y1="256" y2="272" x1="928" />
        </branch>
    </sheet>
</drawing>