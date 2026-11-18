{
    "patcher": {
        "fileversion": 1,
        "appversion": {
            "major": 9,
            "minor": 1,
            "revision": 4,
            "architecture": "x64",
            "modernui": 1
        },
        "classnamespace": "box",
        "rect": [ 34.0, 77.0, 1437.0, 844.0 ],
        "boxes": [
            {
                "box": {
                    "id": "obj-26",
                    "linecount": 4,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1380.8035582602024, 135.0, 151.7857128381729, 64.0 ],
                    "text": "/source/*/direct/mute 0, /source/*/early/mute 1, /source/*/cluster/mute 1, /source/*/reverb/mute 1"
                }
            },
            {
                "box": {
                    "id": "obj-14",
                    "lastchannelcount": 11,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 197.64706707000732, 705.2941470742226, 129.0, 120.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~[5]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mc.live.gain~[5]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-18",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 795.1219701766968, 361.4634232521057, 84.0, 22.0 ],
                    "text": "loadmess -82."
                }
            },
            {
                "box": {
                    "id": "obj-16",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 795.1219701766968, 426.8292784690857, 60.0, 22.0 ],
                    "text": "s upoffset"
                }
            },
            {
                "box": {
                    "id": "obj-11",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1048.6630709767342, 89.54545587301254, 87.0, 22.0 ],
                    "text": "r selected_az3"
                }
            },
            {
                "box": {
                    "id": "obj-12",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1048.6630709767342, 135.0, 140.0, 22.0 ],
                    "text": "prepend /source/11/azim"
                }
            },
            {
                "box": {
                    "id": "obj-4",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 897.3261770009995, 89.54545587301254, 87.0, 22.0 ],
                    "text": "r selected_az2"
                }
            },
            {
                "box": {
                    "id": "obj-6",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 897.3261770009995, 135.0, 141.0, 22.0 ],
                    "text": "prepend /source/10/azim"
                }
            },
            {
                "box": {
                    "id": "obj-1",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 0,
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 34.0, 77.0, 1437.0, 844.0 ],
                        "boxes": [
                            {
                                "box": {
                                    "id": "obj-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 243.70369571447372, 763.9346648454666, 45.92592442035675, 34.0 ],
                                    "text": "ID\n"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 247.40739929676056, 537.6732199788094, 45.92592442035675, 34.0 ],
                                    "text": "ID\n"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 247.40739929676056, 324.0653699040413, 45.92592442035675, 34.0 ],
                                    "text": "ID\n"
                                }
                            },
                            {
                                "box": {
                                    "id": "js",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 52.941178143024445, 115.68627816438675, 156.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "filename": "v13_arms_step1.js",
                                        "parameter_enable": 0
                                    },
                                    "text": "js v13_arms_step1.js"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "label0",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 247.71242612600327, 158.82353442907333, 160.0, 25.0 ],
                                    "text": "人物 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "route0",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 247.71242612600327, 192.81046360731125, 929.0, 22.0 ],
                                    "text": "route id active Raz Rup Laz Lup RazValid RupValid LazValid LupValid"
                                }
                            },
                            {
                                "box": {
                                    "id": "n0_0",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 247.71242612600327, 284.96732926368713, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "n0_1",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 338.56210219860077, 284.96732926368713, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s0_1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 338.56210219860077, 330.0653699040413, 86.0, 22.0 ],
                                    "text": "s bodyactive1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n0_2",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 430.06537306308746, 284.96732926368713, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "az0_2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 80.0, 100.0, 280.0, 220.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 25.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "plus",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 35.0, 75.0, 55.0, 22.0 ],
                                                    "text": "+ 45."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "wrap",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 120.0, 220.0, 22.0 ],
                                                    "text": "expr fmod(720. - $f1\\, 360.)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 35.0, 165.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "plus", 0 ],
                                                    "source": [ "in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "wrap", 0 ],
                                                    "source": [ "plus", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "wrap", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 430.06537306308746, 237.9085042476654, 78.0, 22.0 ],
                                    "text": "p azimuth"
                                }
                            },
                            {
                                "box": {
                                    "id": "s0_2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 430.06537306308746, 330.0653699040413, 86.0, 22.0 ],
                                    "text": "s Raz1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n0_3",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 520.915049135685, 284.96732926368713, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s0_3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.915049135685, 330.0653699040413, 86.0, 22.0 ],
                                    "text": "s Rup1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n0_4",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 611.7647252082825, 284.96732926368713, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "az0_4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 80.0, 100.0, 280.0, 220.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 25.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "plus",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 35.0, 75.0, 55.0, 22.0 ],
                                                    "text": "+ 45."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "wrap",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 120.0, 220.0, 22.0 ],
                                                    "text": "expr fmod(720. - $f1\\, 360.)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 35.0, 165.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "plus", 0 ],
                                                    "source": [ "in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "wrap", 0 ],
                                                    "source": [ "plus", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "wrap", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 611.7647252082825, 237.9085042476654, 78.0, 22.0 ],
                                    "text": "p azimuth"
                                }
                            },
                            {
                                "box": {
                                    "id": "s0_4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 611.7647252082825, 330.0653699040413, 86.0, 22.0 ],
                                    "text": "s Laz1"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n0_5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 702.61440128088, 284.96732926368713, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s0_5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 702.61440128088, 330.0653699040413, 86.0, 22.0 ],
                                    "text": "s Lup1"
                                }
                            },
                            {
                                "box": {
                                    "id": "n0_6",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 794.1176721453667, 284.96732926368713, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s0_6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 794.1176721453667, 330.0653699040413, 86.0, 22.0 ],
                                    "text": "s RazValid1"
                                }
                            },
                            {
                                "box": {
                                    "id": "n0_7",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 884.9673482179642, 284.96732926368713, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s0_7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 884.9673482179642, 330.0653699040413, 86.0, 22.0 ],
                                    "text": "s RupValid1"
                                }
                            },
                            {
                                "box": {
                                    "id": "n0_8",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 975.8170242905617, 284.96732926368713, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s0_8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 975.8170242905617, 330.0653699040413, 86.0, 22.0 ],
                                    "text": "s LazValid1"
                                }
                            },
                            {
                                "box": {
                                    "id": "n0_9",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1066.6667003631592, 284.96732926368713, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s0_9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1066.6667003631592, 330.0653699040413, 86.0, 22.0 ],
                                    "text": "s LupValid1"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "label1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 247.71242612600327, 379.0849792957306, 160.0, 25.0 ],
                                    "text": "人物 2"
                                }
                            },
                            {
                                "box": {
                                    "id": "route1",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 247.71242612600327, 413.0719084739685, 929.0, 22.0 ],
                                    "text": "route id active Raz Rup Laz Lup RazValid RupValid LazValid LupValid"
                                }
                            },
                            {
                                "box": {
                                    "id": "n1_0",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 247.71242612600327, 505.2287741303444, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "n1_1",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 338.56210219860077, 505.2287741303444, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s1_1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 338.56210219860077, 549.6732199788094, 86.0, 22.0 ],
                                    "text": "s bodyactive2"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n1_2",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 430.06537306308746, 505.2287741303444, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "az1_2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 80.0, 100.0, 280.0, 220.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 25.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "plus",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 35.0, 75.0, 55.0, 22.0 ],
                                                    "text": "+ 45."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "wrap",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 120.0, 220.0, 22.0 ],
                                                    "text": "expr fmod(720. - $f1\\, 360.)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 35.0, 165.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "plus", 0 ],
                                                    "source": [ "in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "wrap", 0 ],
                                                    "source": [ "plus", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "wrap", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 430.06537306308746, 458.16994911432266, 78.0, 22.0 ],
                                    "text": "p azimuth"
                                }
                            },
                            {
                                "box": {
                                    "id": "s1_2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 430.06537306308746, 549.6732199788094, 86.0, 22.0 ],
                                    "text": "s Raz2"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n1_3",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 520.915049135685, 505.2287741303444, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s1_3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.915049135685, 549.6732199788094, 86.0, 22.0 ],
                                    "text": "s Rup2"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n1_4",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 611.7647252082825, 505.2287741303444, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "az1_4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 80.0, 100.0, 280.0, 220.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 25.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "plus",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 35.0, 75.0, 55.0, 22.0 ],
                                                    "text": "+ 45."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "wrap",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 120.0, 220.0, 22.0 ],
                                                    "text": "expr fmod(720. - $f1\\, 360.)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 35.0, 165.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "plus", 0 ],
                                                    "source": [ "in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "wrap", 0 ],
                                                    "source": [ "plus", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "wrap", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 611.7647252082825, 458.16994911432266, 78.0, 22.0 ],
                                    "text": "p azimuth"
                                }
                            },
                            {
                                "box": {
                                    "id": "s1_4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 611.7647252082825, 549.6732199788094, 86.0, 22.0 ],
                                    "text": "s Laz2"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n1_5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 702.61440128088, 505.2287741303444, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s1_5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 702.61440128088, 549.6732199788094, 86.0, 22.0 ],
                                    "text": "s Lup2"
                                }
                            },
                            {
                                "box": {
                                    "id": "n1_6",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 794.1176721453667, 505.2287741303444, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s1_6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 794.1176721453667, 549.6732199788094, 86.0, 22.0 ],
                                    "text": "s RazValid2"
                                }
                            },
                            {
                                "box": {
                                    "id": "n1_7",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 884.9673482179642, 505.2287741303444, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s1_7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 884.9673482179642, 549.6732199788094, 86.0, 22.0 ],
                                    "text": "s RupValid2"
                                }
                            },
                            {
                                "box": {
                                    "id": "n1_8",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 975.8170242905617, 505.2287741303444, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s1_8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 975.8170242905617, 549.6732199788094, 86.0, 22.0 ],
                                    "text": "s LazValid2"
                                }
                            },
                            {
                                "box": {
                                    "id": "n1_9",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1066.6667003631592, 505.2287741303444, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s1_9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1066.6667003631592, 549.6732199788094, 86.0, 22.0 ],
                                    "text": "s LupValid2"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 14.0,
                                    "id": "label2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 247.71242612600327, 598.6928293704987, 160.0, 25.0 ],
                                    "text": "人物 3"
                                }
                            },
                            {
                                "box": {
                                    "id": "route2",
                                    "maxclass": "newobj",
                                    "numinlets": 11,
                                    "numoutlets": 11,
                                    "outlettype": [ "", "", "", "", "", "", "", "", "", "", "" ],
                                    "patching_rect": [ 247.71242612600327, 632.6797585487366, 929.0, 22.0 ],
                                    "text": "route id active Raz Rup Laz Lup RazValid RupValid LazValid LupValid"
                                }
                            },
                            {
                                "box": {
                                    "id": "n2_0",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 247.71242612600327, 724.8366242051125, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "n2_1",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 338.56210219860077, 724.8366242051125, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s2_1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 338.56210219860077, 769.9346648454666, 86.0, 22.0 ],
                                    "text": "s bodyactive3"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n2_2",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 430.06537306308746, 724.8366242051125, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "az2_2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 80.0, 100.0, 280.0, 220.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 25.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "plus",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 35.0, 75.0, 55.0, 22.0 ],
                                                    "text": "+ 45."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "wrap",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 120.0, 220.0, 22.0 ],
                                                    "text": "expr fmod(720. - $f1\\, 360.)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 35.0, 165.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "plus", 0 ],
                                                    "source": [ "in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "wrap", 0 ],
                                                    "source": [ "plus", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "wrap", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 430.06537306308746, 677.7777991890907, 78.0, 22.0 ],
                                    "text": "p azimuth"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2_2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 430.06537306308746, 769.9346648454666, 86.0, 22.0 ],
                                    "text": "s Raz3"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n2_3",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 520.915049135685, 724.8366242051125, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s2_3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 520.915049135685, 769.9346648454666, 86.0, 22.0 ],
                                    "text": "s Rup3"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n2_4",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 611.7647252082825, 724.8366242051125, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "az2_4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 80.0, 100.0, 280.0, 220.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "in",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 25.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "plus",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 35.0, 75.0, 55.0, 22.0 ],
                                                    "text": "+ 45."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "wrap",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 120.0, 220.0, 22.0 ],
                                                    "text": "expr fmod(720. - $f1\\, 360.)"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "out",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 35.0, 165.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "plus", 0 ],
                                                    "source": [ "in", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "wrap", 0 ],
                                                    "source": [ "plus", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "out", 0 ],
                                                    "source": [ "wrap", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 611.7647252082825, 677.7777991890907, 78.0, 22.0 ],
                                    "text": "p azimuth"
                                }
                            },
                            {
                                "box": {
                                    "id": "s2_4",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 611.7647252082825, 769.9346648454666, 86.0, 22.0 ],
                                    "text": "s Laz3"
                                }
                            },
                            {
                                "box": {
                                    "format": 6,
                                    "id": "n2_5",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 702.61440128088, 724.8366242051125, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s2_5",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 702.61440128088, 769.9346648454666, 86.0, 22.0 ],
                                    "text": "s Lup3"
                                }
                            },
                            {
                                "box": {
                                    "id": "n2_6",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 794.1176721453667, 724.8366242051125, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s2_6",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 794.1176721453667, 769.9346648454666, 86.0, 22.0 ],
                                    "text": "s RazValid3"
                                }
                            },
                            {
                                "box": {
                                    "id": "n2_7",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 884.9673482179642, 724.8366242051125, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s2_7",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 884.9673482179642, 769.9346648454666, 86.0, 22.0 ],
                                    "text": "s RupValid3"
                                }
                            },
                            {
                                "box": {
                                    "id": "n2_8",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 975.8170242905617, 724.8366242051125, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s2_8",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 975.8170242905617, 769.9346648454666, 86.0, 22.0 ],
                                    "text": "s LazValid3"
                                }
                            },
                            {
                                "box": {
                                    "id": "n2_9",
                                    "maxclass": "number",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1066.6667003631592, 724.8366242051125, 77.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "s2_9",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1066.6667003631592, 769.9346648454666, 86.0, 22.0 ],
                                    "text": "s LupValid3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 53.0, 65.0, 97.0, 22.0 ],
                                    "text": "udpreceive 9010"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "n0_2", 0 ],
                                    "source": [ "az0_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n0_4", 0 ],
                                    "source": [ "az0_4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n1_2", 0 ],
                                    "source": [ "az1_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n1_4", 0 ],
                                    "source": [ "az1_4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n2_2", 0 ],
                                    "source": [ "az2_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n2_4", 0 ],
                                    "source": [ "az2_4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "route0", 0 ],
                                    "midpoints": [ 62.441178143024445, 148.9346648454666, 64.66670036315918, 148.9346648454666, 64.66670036315918, 184.9346648454666, 257.21242612600327, 184.9346648454666 ],
                                    "source": [ "js", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "route1", 0 ],
                                    "midpoints": [ 130.94117814302444, 408.0, 257.21242612600327, 408.0 ],
                                    "source": [ "js", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "route2", 0 ],
                                    "midpoints": [ 199.44117814302444, 627.0, 257.21242612600327, 627.0 ],
                                    "source": [ "js", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s0_1", 0 ],
                                    "source": [ "n0_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s0_2", 0 ],
                                    "source": [ "n0_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s0_3", 0 ],
                                    "source": [ "n0_3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s0_4", 0 ],
                                    "source": [ "n0_4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s0_5", 0 ],
                                    "source": [ "n0_5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s0_6", 0 ],
                                    "source": [ "n0_6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s0_7", 0 ],
                                    "source": [ "n0_7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s0_8", 0 ],
                                    "source": [ "n0_8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s0_9", 0 ],
                                    "source": [ "n0_9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s1_1", 0 ],
                                    "source": [ "n1_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s1_2", 0 ],
                                    "source": [ "n1_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s1_3", 0 ],
                                    "source": [ "n1_3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s1_4", 0 ],
                                    "source": [ "n1_4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s1_5", 0 ],
                                    "source": [ "n1_5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s1_6", 0 ],
                                    "source": [ "n1_6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s1_7", 0 ],
                                    "source": [ "n1_7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s1_8", 0 ],
                                    "source": [ "n1_8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s1_9", 0 ],
                                    "source": [ "n1_9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2_1", 0 ],
                                    "source": [ "n2_1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2_2", 0 ],
                                    "source": [ "n2_2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2_3", 0 ],
                                    "source": [ "n2_3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2_4", 0 ],
                                    "source": [ "n2_4", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2_5", 0 ],
                                    "source": [ "n2_5", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2_6", 0 ],
                                    "source": [ "n2_6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2_7", 0 ],
                                    "source": [ "n2_7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2_8", 0 ],
                                    "source": [ "n2_8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "s2_9", 0 ],
                                    "source": [ "n2_9", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "js", 0 ],
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "az0_2", 0 ],
                                    "source": [ "route0", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "az0_4", 0 ],
                                    "source": [ "route0", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n0_0", 0 ],
                                    "source": [ "route0", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n0_1", 0 ],
                                    "source": [ "route0", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n0_3", 0 ],
                                    "source": [ "route0", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n0_5", 0 ],
                                    "source": [ "route0", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n0_6", 0 ],
                                    "source": [ "route0", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n0_7", 0 ],
                                    "source": [ "route0", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n0_8", 0 ],
                                    "source": [ "route0", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n0_9", 0 ],
                                    "source": [ "route0", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "az1_2", 0 ],
                                    "source": [ "route1", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "az1_4", 0 ],
                                    "source": [ "route1", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n1_0", 0 ],
                                    "source": [ "route1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n1_1", 0 ],
                                    "source": [ "route1", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n1_3", 0 ],
                                    "source": [ "route1", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n1_5", 0 ],
                                    "source": [ "route1", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n1_6", 0 ],
                                    "source": [ "route1", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n1_7", 0 ],
                                    "source": [ "route1", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n1_8", 0 ],
                                    "source": [ "route1", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n1_9", 0 ],
                                    "source": [ "route1", 9 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "az2_2", 0 ],
                                    "source": [ "route2", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "az2_4", 0 ],
                                    "source": [ "route2", 4 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n2_0", 0 ],
                                    "source": [ "route2", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n2_1", 0 ],
                                    "source": [ "route2", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n2_3", 0 ],
                                    "source": [ "route2", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n2_5", 0 ],
                                    "source": [ "route2", 5 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n2_6", 0 ],
                                    "source": [ "route2", 6 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n2_7", 0 ],
                                    "source": [ "route2", 7 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n2_8", 0 ],
                                    "source": [ "route2", 8 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "n2_9", 0 ],
                                    "source": [ "route2", 9 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 37.5, 40.41666570305824, 97.0, 22.0 ],
                    "text": "p oscfrompython"
                }
            },
            {
                "box": {
                    "id": "obj-17",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 2,
                    "outlettype": [ "", "" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 80.0, 100.0, 440.0, 260.0 ],
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-4",
                                    "index": 2,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 180.0, 160.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-7",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 180.0, 105.0, 101.0, 22.0 ],
                                    "text": "route /experience"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-6",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 40.0, 160.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 40.0, 105.0, 77.0, 22.0 ],
                                    "text": "route /record"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-1",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 40.0, 35.0, 97.0, 22.0 ],
                                    "text": "udpreceive 9000"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-3", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 49.5, 81.0, 189.5, 81.0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-3", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-4", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 335.0, 45.0, 120.0, 22.0 ],
                    "text": "p oscfromtablet"
                }
            },
            {
                "box": {
                    "id": "obj-52",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "bang" ],
                    "patching_rect": [ 1208.0213550925255, 90.08021521568298, 58.0, 22.0 ],
                    "text": "loadbang"
                }
            },
            {
                "box": {
                    "id": "obj-49",
                    "linecount": 8,
                    "maxclass": "message",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 1208.0213550925255, 135.0, 155.0, 119.0 ],
                    "text": "/source/2/azim 0, /source/3/azim 45, /source/4/azim 90, /source/5/azim 135, /source/6/azim 180, /source/7/azim 225, /source/8/azim 270, /source/9/azim 315"
                }
            },
            {
                "box": {
                    "id": "obj-58",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750.0, 2.139037370681763, 175.0, 22.0 ],
                    "text": "loadmess /source/*/aperture 10"
                }
            },
            {
                "box": {
                    "id": "obj-41",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "multichannelsignal" ],
                    "patcher": {
                        "fileversion": 1,
                        "appversion": {
                            "major": 9,
                            "minor": 1,
                            "revision": 4,
                            "architecture": "x64",
                            "modernui": 1
                        },
                        "classnamespace": "box",
                        "rect": [ 787.0, 84.0, 682.0, 836.0 ],
                        "visible": 1,
                        "boxes": [
                            {
                                "box": {
                                    "channels": 11,
                                    "id": "obj-157",
                                    "lastchannelcount": 11,
                                    "maxclass": "mc.live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 533.8982802629471, 1371.1863769292831, 209.0, 134.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "mc.live.gain~[4]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "mc.live.gain~[4]",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "mc.live.gain~[3]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-155",
                                    "linecount": 2,
                                    "maxclass": "newobj",
                                    "numinlets": 4,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 534.0, 1278.0, 143.39024686813343, 36.0 ],
                                    "text": "mc.combine~ 4 @chans 11"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-154",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 575.609769821167, 1215.0327181220055, 464.1494573354721, 22.0 ],
                                    "text": "mc.+~ @chans 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-153",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 575.609769821167, 1134.640558719635, 233.779094517231, 22.0 ],
                                    "text": "mc.+~ @chans 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-152",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
                                    "patching_rect": [ 979.2592271566391, 1068.6274847388268, 102.0, 22.0 ],
                                    "text": "mc.separate~ 1 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-151",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
                                    "patching_rect": [ 748.888864338398, 1065.1961444616318, 102.0, 22.0 ],
                                    "text": "mc.separate~ 1 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-150",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
                                    "patching_rect": [ 534.0740565657616, 1065.1961444616318, 102.0, 22.0 ],
                                    "text": "mc.separate~ 1 8"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-149",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1989.3616878986359, 636.1702082157135, 59.0, 22.0 ],
                                    "text": "s endPos"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-145",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1885.3616893291473, 636.1702082157135, 62.0, 22.0 ],
                                    "text": "s startPos"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-144",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 1067.9955523014069, 715.5038870573044, 84.0, 22.0 ],
                                    "text": "r~ gain_adjust"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-143",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 838.3991320133209, 726.0, 84.0, 22.0 ],
                                    "text": "r~ gain_adjust"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-142",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 623.6009185016155, 726.0, 84.0, 22.0 ],
                                    "text": "r~ gain_adjust"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-139",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 978.4753692746162, 777.1300710141659, 108.52018302679062, 22.0 ],
                                    "text": "mc.*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-137",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 748.8789489865303, 778.0269320309162, 108.52018302679062, 22.0 ],
                                    "text": "mc.*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-136",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patching_rect": [ 534.0807354748249, 777.1300710141659, 108.52018302679062, 22.0 ],
                                    "text": "mc.*~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-135",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1281.395368695259, 901.4814519286156, 86.0, 22.0 ],
                                    "text": "s~ gain_adjust"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-133",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "bang" ],
                                    "patching_rect": [ 1281.395368695259, 855.0387729406357, 34.0, 22.0 ],
                                    "text": "line~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-130",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1281.395368695259, 812.7907102704048, 71.0, 22.0 ],
                                    "text": "pack 0. 300"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-129",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1281.395368695259, 771.7054383158684, 133.0, 22.0 ],
                                    "text": "expr 1./sqrt(max(1\\,$i1))"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-128",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1281.395368695259, 715.5038870573044, 111.0, 22.0 ],
                                    "text": "expr $i1 + $i2 + $i3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-126",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1281.4815838336945, 572.8682259321213, 150.0, 22.0 ],
                                    "text": "音量適正化"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-122",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1281.395368695259, 665.1851633787155, 201.88849425315857, 22.0 ],
                                    "text": "pak 0 0 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-116",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1464.2838629484177, 613.580295920372, 61.0, 22.0 ],
                                    "text": "r playing3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-114",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1372.8396158218384, 613.580295920372, 61.0, 22.0 ],
                                    "text": "r playing2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-112",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1281.4815838336945, 613.580295920372, 61.0, 22.0 ],
                                    "text": "r playing1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-111",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 775.8621096611023, 246.40523654222488, 77.0, 22.0 ],
                                    "text": "s experience"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-106",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 787.0, 84.0, 682.0, 836.0 ],
                                        "visible": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 567.7966237068176, 272.8813624382019, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 597.4576413631439, 138.13559651374817, 133.0, 22.0 ],
                                                    "text": "scale 0. 99999 0. 1200."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 207.62712359428406, 133.05085062980652, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 597.4576413631439, 34.745763540267944, 93.0, 22.0 ],
                                                    "text": "random 100000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 207.62712359428406, -10.1694917678833, 79.0, 22.0 ],
                                                    "text": "r bothhands3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 207.62712359428406, 172.0339024066925, 409.0, 22.0 ],
                                                    "text": "switch 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 207.62712359428406, 199.15254712104797, 97.0, 22.0 ],
                                                    "text": "prepend position"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-149",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 505.0847578048706, 17.796610593795776, 57.0, 22.0 ],
                                                    "text": "r endPos"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-145",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 478.81357073783875, -5.932203531265259, 60.0, 22.0 ],
                                                    "text": "r startPos"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 402.542382478714, 128.81356239318848, 152.0, 22.0 ],
                                                    "text": "scale 0. 360. 0. 1200."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 402.542382478714, 26.27118706703186, 87.0, 22.0 ],
                                                    "text": "r selected_az3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 480.48781633377075, 848.7805080413818, 118.0, 22.0 ],
                                                    "text": "prepend outputgains"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 784.1463601589203, 581.7073309421539, 133.0, 22.0 ],
                                                    "text": "random @range -12 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 587.8048920631409, 425.6097662448883, 215.0, 22.0 ],
                                                    "text": "t b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 727.0, 54.0, 87.0, 22.0 ],
                                                    "text": "r selected_up3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 69.02797865867615, 27.0, 75.0, 22.0 ],
                                                    "text": "r experience"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-104",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 727.0, 116.0, 103.0, 22.0 ],
                                                    "text": "scale 0. 90. 0. 60."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-102",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 727.0, 156.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-98",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 707.0, 192.0, 40.0, 22.0 ],
                                                    "text": "* 100."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-89",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 707.0, 231.0, 84.0, 22.0 ],
                                                    "text": "resampling $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 591.9117534160614, 233.5106366276741, 87.0, 22.0 ],
                                                    "text": "r granu_period"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 493.3823435306549, 233.5106366276741, 71.0, 22.0 ],
                                                    "text": "r granu_dur"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-10",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 68.3823516368866, 657.3529286384583, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-72",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 100.64562511444092, 139.39299136400223, 29.5, 22.0 ],
                                                    "text": "0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-71",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 69.02797865867615, 138.6576972603798, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-66",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 100.64562511444092, 111.45181542634964, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-65",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 69.02797865867615, 78.36358076334, 48.0, 22.0 ],
                                                    "text": "change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 68.29268455505371, 178.36357885599136, 107.46268272399902, 22.0 ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 157.26327109336853, 84.98122769594193, 61.0, 22.0 ],
                                                    "text": "r playing3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "play",
                                                    "id": "obj-39",
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 68.29268455505371, 233.5106366276741, 136.5145244896412, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 257.3529362678528, 233.5106366276741, 59.0, 22.0 ],
                                                    "text": "r granpos"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 480.48781633377075, 502.43903636932373, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 479.26830410957336, 463.4146451950073, 79.0, 22.0 ],
                                                    "text": "r bothhands3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 478.9473638534546, 541.4634275436401, 127.85752820968628, 22.0 ],
                                                    "text": "gate 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 479.26830410957336, 717.073187828064, 95.0, 22.0 ],
                                                    "text": "1 0 0 0 0 0 0 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 589.0244042873383, 671.9512355327606, 95.0, 22.0 ],
                                                    "text": "1 2 3 4 5 6 7 8 9"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "int" ],
                                                    "patching_rect": [ 589.0244042873383, 624.3902587890625, 180.74865782260895, 22.0 ],
                                                    "text": "t b i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 589.0244042873383, 717.073187828064, 181.0, 22.0 ],
                                                    "text": "vexpr $i1 == $i2 @scalarmode 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 589.0244042873383, 590.2439165115356, 115.0, 22.0 ],
                                                    "text": "random @range 2 9"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-114",
                                                    "maxclass": "newobj",
                                                    "numinlets": 9,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "multichannelsignal" ],
                                                    "patching_rect": [ 68.14814591407776, 434.14635181427, 445.93408690558545, 22.0 ],
                                                    "text": "mc.pack~ 9"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 10,
                                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
                                                    "patching_rect": [ 68.29268455505371, 321.95122718811035, 498.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "resampleaudioinput": 0,
                                                        "verbose": 1
                                                    },
                                                    "text": "mubu.granular~ 9 voiceDB @audio audio @play 0 @outputposition 1 @duplicatechannels 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 217.12712359428406, 306.0, 77.79268455505371, 306.0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 1 ],
                                                    "midpoints": [ 736.5, 182.0, 737.5, 182.0 ],
                                                    "source": [ "obj-102", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-102", 0 ],
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-114", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 502.8823435306549, 306.0, 77.79268455505371, 306.0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 601.4117534160614, 306.0, 77.79268455505371, 306.0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 3 ],
                                                    "order": 1,
                                                    "source": [ "obj-145", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 3 ],
                                                    "order": 0,
                                                    "source": [ "obj-145", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 4 ],
                                                    "order": 1,
                                                    "source": [ "obj-149", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 4 ],
                                                    "order": 0,
                                                    "source": [ "obj-149", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 1 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 1 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 8 ],
                                                    "source": [ "obj-19", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 7 ],
                                                    "source": [ "obj-19", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 6 ],
                                                    "source": [ "obj-19", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 5 ],
                                                    "source": [ "obj-19", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 4 ],
                                                    "source": [ "obj-19", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 3 ],
                                                    "source": [ "obj-19", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 2 ],
                                                    "source": [ "obj-19", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 1 ],
                                                    "source": [ "obj-19", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-19", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-3", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-19", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 266.8529362678528, 306.0, 77.79268455505371, 306.0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 1 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 0 ],
                                                    "source": [ "obj-21", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 489.98781633377075, 873.5366041660309, 52.51221585273743, 873.5366041660309, 52.51221585273743, 317.53660464286804, 77.79268455505371, 317.53660464286804 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "source": [ "obj-3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 2 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 1 ],
                                                    "source": [ "obj-61", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-71", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-7", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-71", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-72", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 716.5, 306.0, 77.79268455505371, 306.0 ],
                                                    "source": [ "obj-89", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "midpoints": [ 793.6463601589203, 600.0, 948.8048729896545, 600.0, 948.8048729896545, 453.0, 948.121945142746, 453.0, 948.121945142746, 189.0, 716.5, 189.0 ],
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-89", 0 ],
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 979.2592271566391, 665.1851633787155, 109.0, 22.0 ],
                                    "text": "p player3_granular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-107",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 59.0, 107.0, 1000.0, 780.0 ],
                                        "visible": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "a1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 45.0, 85.0, 22.0 ],
                                                    "text": "r Rup3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 135.0, 45.0, 85.0, 22.0 ],
                                                    "text": "r Lup3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 235.0, 45.0, 85.0, 22.0 ],
                                                    "text": "r RupValid3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 335.0, 45.0, 85.0, 22.0 ],
                                                    "text": "r LupValid3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 435.0, 45.0, 85.0, 22.0 ],
                                                    "text": "r bodyactive3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 535.0, 45.0, 85.0, 22.0 ],
                                                    "text": "r upoffset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pak",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 105.0, 520.0, 22.0 ],
                                                    "text": "pak -90. -90. 0 0 0 -70."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "state",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 160.0, 790.0, 36.0 ],
                                                    "presentation_linecount": 2,
                                                    "text": "expr $i5 * (3 * ($i3 && $i4 && $f1 >= 0. && $f2 >= 0.) + (($i3 && $i4 && $f1 >= 0. && $f2 >= 0.) == 0) * (($i3 && $f1 >= $f6 && ($i4 == 0 || $f2 < $f6 || $f1 >= $f2)) + 2 * ($i4 && $f2 >= $f6 && ($i3 == 0 || $f1 < $f6 || $f2 > $f1))))"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "change",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 35.0, 210.0, 48.0, 22.0 ],
                                                    "text": "change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "sel",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 35.0, 260.0, 80.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "raz",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 115.0, 315.0, 55.0, 22.0 ],
                                                    "text": "r Raz3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "laz",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 180.0, 315.0, 55.0, 22.0 ],
                                                    "text": "r Laz3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "rup",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 325.0, 315.0, 55.0, 22.0 ],
                                                    "text": "r Rup3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "lup",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 390.0, 315.0, 55.0, 22.0 ],
                                                    "text": "r Lup3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "swaz",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 365.0, 150.0, 22.0 ],
                                                    "text": "switch 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "swup",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 260.0, 365.0, 150.0, 22.0 ],
                                                    "text": "switch 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "azsend",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 50.0, 415.0, 95.0, 22.0 ],
                                                    "text": "s selected_az3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "upsend",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 260.0, 415.0, 95.0, 22.0 ],
                                                    "text": "s selected_up3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "p",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 475.0, 260.0, 40.0, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pc",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 475.0, 365.0, 48.0, 22.0 ],
                                                    "text": "change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ps",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 475.0, 415.0, 75.0, 22.0 ],
                                                    "text": "s playing3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "b",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 585.0, 365.0, 40.0, 22.0 ],
                                                    "text": "== 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "bs",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 585.0, 415.0, 90.0, 22.0 ],
                                                    "text": "s bothhands3"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 0 ],
                                                    "source": [ "a1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 1 ],
                                                    "source": [ "a2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 2 ],
                                                    "source": [ "a3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 3 ],
                                                    "source": [ "a4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 4 ],
                                                    "source": [ "a5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 5 ],
                                                    "source": [ "a6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "bs", 0 ],
                                                    "source": [ "b", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "b", 0 ],
                                                    "order": 0,
                                                    "source": [ "change", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "p", 0 ],
                                                    "order": 1,
                                                    "source": [ "change", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sel", 0 ],
                                                    "order": 2,
                                                    "source": [ "change", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swaz", 2 ],
                                                    "source": [ "laz", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swup", 2 ],
                                                    "source": [ "lup", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pc", 0 ],
                                                    "source": [ "p", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "state", 0 ],
                                                    "source": [ "pak", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ps", 0 ],
                                                    "source": [ "pc", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swaz", 1 ],
                                                    "source": [ "raz", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swup", 1 ],
                                                    "source": [ "rup", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swaz", 0 ],
                                                    "order": 1,
                                                    "source": [ "sel", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swup", 0 ],
                                                    "order": 0,
                                                    "source": [ "sel", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "change", 0 ],
                                                    "source": [ "state", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "azsend", 0 ],
                                                    "source": [ "swaz", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "upsend", 0 ],
                                                    "source": [ "swup", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 979.2592271566391, 565.185166656971, 99.0, 22.0 ],
                                    "text": "p player3_assign"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-108",
                                    "lastchannelcount": 9,
                                    "maxclass": "mc.live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 979.2592271566391, 901.4814519286156, 187.0, 129.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "mc.live.gain~[3]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "mc.live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "mc.live.gain~[2]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-102",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 787.0, 84.0, 682.0, 836.0 ],
                                        "visible": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-26",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 558.8048896789551, 287.8048849105835, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 597.56098985672, 132.0, 133.0, 22.0 ],
                                                    "text": "scale 0. 99999 0. 1200."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 207.56098985671997, 127.0, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 597.56098985672, 29.0, 93.0, 22.0 ],
                                                    "text": "random 100000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 207.56098985671997, -16.0, 79.0, 22.0 ],
                                                    "text": "r bothhands2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 207.56098985671997, 166.0, 409.0, 22.0 ],
                                                    "text": "switch 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 206.56098985671997, 193.0, 97.0, 22.0 ],
                                                    "text": "prepend position"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-149",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 504.56098985671997, 12.0, 57.0, 22.0 ],
                                                    "text": "r endPos"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-145",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 478.56098985671997, -12.0, 60.0, 22.0 ],
                                                    "text": "r startPos"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 402.56098985671997, 123.0, 152.0, 22.0 ],
                                                    "text": "scale 0. 360. 0. 1200."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 402.56098985671997, 20.0, 87.0, 22.0 ],
                                                    "text": "r selected_az2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 487.8048896789551, 857.3170936107635, 118.0, 22.0 ],
                                                    "text": "prepend outputgains"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 795.1219701766968, 558.5365986824036, 133.0, 22.0 ],
                                                    "text": "random @range -12 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 600.0000143051147, 402.43903398513794, 215.0, 22.0 ],
                                                    "text": "t b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 727.0, 54.0, 87.0, 22.0 ],
                                                    "text": "r selected_up2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 69.02797865867615, 27.0, 75.0, 22.0 ],
                                                    "text": "r experience"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-104",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 727.0, 116.0, 103.0, 22.0 ],
                                                    "text": "scale 0. 90. 0. 60."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-102",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 727.0, 156.0, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-98",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 707.0, 192.0, 40.0, 22.0 ],
                                                    "text": "* 100."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-89",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 707.0, 231.0, 84.0, 22.0 ],
                                                    "text": "resampling $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 591.9117534160614, 233.5106366276741, 87.0, 22.0 ],
                                                    "text": "r granu_period"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 493.3823435306549, 233.5106366276741, 71.0, 22.0 ],
                                                    "text": "r granu_dur"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-10",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 68.3823516368866, 657.3529286384583, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-72",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 100.64562511444092, 139.39299136400223, 29.5, 22.0 ],
                                                    "text": "0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-71",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 69.02797865867615, 138.6576972603798, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-66",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 100.64562511444092, 111.45181542634964, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-65",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 69.02797865867615, 78.36358076334, 48.0, 22.0 ],
                                                    "text": "change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 68.29268455505371, 178.36357885599136, 107.46268272399902, 22.0 ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 157.26327109336853, 84.98122769594193, 61.0, 22.0 ],
                                                    "text": "r playing2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "play",
                                                    "id": "obj-39",
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 68.29268455505371, 233.5106366276741, 136.5145244896412, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 257.3529362678528, 233.5106366276741, 59.0, 22.0 ],
                                                    "text": "r granpos"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 489.02440190315247, 504.8780608177185, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 487.8048896789551, 465.8536696434021, 79.0, 22.0 ],
                                                    "text": "r bothhands2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 487.6470791697502, 543.9024519920349, 128.91391068696976, 22.0 ],
                                                    "text": "gate 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 487.8048896789551, 719.5122122764587, 95.0, 22.0 ],
                                                    "text": "1 0 0 0 0 0 0 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 597.56098985672, 674.3902599811554, 95.0, 22.0 ],
                                                    "text": "1 2 3 4 5 6 7 8 9"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "int" ],
                                                    "patching_rect": [ 597.56098985672, 626.8292832374573, 180.74865782260895, 22.0 ],
                                                    "text": "t b i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 597.56098985672, 719.5122122764587, 181.0, 22.0 ],
                                                    "text": "vexpr $i1 == $i2 @scalarmode 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 597.56098985672, 592.6829409599304, 115.0, 22.0 ],
                                                    "text": "random @range 2 9"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-114",
                                                    "maxclass": "newobj",
                                                    "numinlets": 9,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "multichannelsignal" ],
                                                    "patching_rect": [ 67.97385835647583, 434.14635181427, 445.1421505761525, 22.0 ],
                                                    "text": "mc.pack~ 9"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 10,
                                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
                                                    "patching_rect": [ 68.29268455505371, 321.95122718811035, 498.0, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "resampleaudioinput": 0,
                                                        "verbose": 1
                                                    },
                                                    "text": "mubu.granular~ 9 voiceDB @audio audio @play 0 @outputposition 1 @duplicatechannels 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 1 ],
                                                    "midpoints": [ 736.5, 182.0, 737.5, 182.0 ],
                                                    "source": [ "obj-102", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-102", 0 ],
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-114", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 502.8823435306549, 306.0, 77.79268455505371, 306.0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 601.4117534160614, 306.0, 77.79268455505371, 306.0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 3 ],
                                                    "order": 1,
                                                    "source": [ "obj-145", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 3 ],
                                                    "order": 0,
                                                    "source": [ "obj-145", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 4 ],
                                                    "order": 1,
                                                    "source": [ "obj-149", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 4 ],
                                                    "order": 0,
                                                    "source": [ "obj-149", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 1 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 1 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 8 ],
                                                    "source": [ "obj-19", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 7 ],
                                                    "source": [ "obj-19", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 6 ],
                                                    "source": [ "obj-19", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 5 ],
                                                    "source": [ "obj-19", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 4 ],
                                                    "source": [ "obj-19", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 3 ],
                                                    "source": [ "obj-19", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 2 ],
                                                    "source": [ "obj-19", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 1 ],
                                                    "source": [ "obj-19", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-19", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-26", 0 ],
                                                    "midpoints": [ 556.7926845550537, 345.0, 568.3048896789551, 345.0 ],
                                                    "order": 1,
                                                    "source": [ "obj-19", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 266.8529362678528, 306.0, 77.79268455505371, 306.0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 1 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 0 ],
                                                    "source": [ "obj-21", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 52.51221585273743, 848.536604642868, 52.51221585273743, 317.53660464286804, 77.79268455505371, 317.53660464286804 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "midpoints": [ 568.3048896789551, 198.0, 627.0, 198.0, 627.0, 156.0, 582.0, 156.0, 582.0, 24.0, 607.06098985672, 24.0 ],
                                                    "source": [ "obj-26", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 2 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 1 ],
                                                    "source": [ "obj-61", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-71", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-7", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-71", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-72", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 716.5, 306.0, 77.79268455505371, 306.0 ],
                                                    "source": [ "obj-89", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "midpoints": [ 804.6219701766968, 573.0, 947.4333646297455, 573.0, 947.4333646297455, 426.0, 1002.8648927211761, 426.0, 1002.8648927211761, 354.0, 1011.0, 354.0, 1011.0, 189.0, 716.5, 189.0 ],
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-89", 0 ],
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 748.888864338398, 660.7407190799713, 109.0, 22.0 ],
                                    "text": "p player2_granular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-104",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 59.0, 107.0, 1000.0, 780.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "a1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 20.0, 30.0, 85.0, 22.0 ],
                                                    "text": "r Rup2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 120.0, 30.0, 85.0, 22.0 ],
                                                    "text": "r Lup2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 220.0, 30.0, 85.0, 22.0 ],
                                                    "text": "r RupValid2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 320.0, 30.0, 85.0, 22.0 ],
                                                    "text": "r LupValid2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 420.0, 30.0, 85.0, 22.0 ],
                                                    "text": "r bodyactive2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 520.0, 30.0, 85.0, 22.0 ],
                                                    "text": "r upoffset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pak",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 20.0, 90.0, 520.0, 22.0 ],
                                                    "text": "pak -90. -90. 0 0 0 -70."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "state",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 20.0, 145.0, 790.0, 36.0 ],
                                                    "text": "expr $i5 * (3 * ($i3 && $i4 && $f1 >= 0. && $f2 >= 0.) + (($i3 && $i4 && $f1 >= 0. && $f2 >= 0.) == 0) * (($i3 && $f1 >= $f6 && ($i4 == 0 || $f2 < $f6 || $f1 >= $f2)) + 2 * ($i4 && $f2 >= $f6 && ($i3 == 0 || $f1 < $f6 || $f2 > $f1))))"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "change",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 20.0, 195.0, 48.0, 22.0 ],
                                                    "text": "change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "sel",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 20.0, 245.0, 80.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "raz",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 100.0, 300.0, 55.0, 22.0 ],
                                                    "text": "r Raz2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "laz",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 165.0, 300.0, 55.0, 22.0 ],
                                                    "text": "r Laz2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "rup",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 310.0, 300.0, 55.0, 22.0 ],
                                                    "text": "r Rup2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "lup",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 375.0, 300.0, 55.0, 22.0 ],
                                                    "text": "r Lup2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "swaz",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 35.0, 350.0, 150.0, 22.0 ],
                                                    "text": "switch 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "swup",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 245.0, 350.0, 150.0, 22.0 ],
                                                    "text": "switch 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "azsend",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 35.0, 400.0, 95.0, 22.0 ],
                                                    "text": "s selected_az2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "upsend",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 245.0, 400.0, 95.0, 22.0 ],
                                                    "text": "s selected_up2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "p",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 460.0, 245.0, 40.0, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pc",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 460.0, 350.0, 48.0, 22.0 ],
                                                    "text": "change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ps",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 460.0, 400.0, 75.0, 22.0 ],
                                                    "text": "s playing2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "b",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 570.0, 350.0, 40.0, 22.0 ],
                                                    "text": "== 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "bs",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 570.0, 400.0, 90.0, 22.0 ],
                                                    "text": "s bothhands2"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 0 ],
                                                    "source": [ "a1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 1 ],
                                                    "source": [ "a2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 2 ],
                                                    "source": [ "a3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 3 ],
                                                    "source": [ "a4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 4 ],
                                                    "source": [ "a5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 5 ],
                                                    "source": [ "a6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "bs", 0 ],
                                                    "source": [ "b", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "b", 0 ],
                                                    "order": 0,
                                                    "source": [ "change", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "p", 0 ],
                                                    "order": 1,
                                                    "source": [ "change", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sel", 0 ],
                                                    "order": 2,
                                                    "source": [ "change", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swaz", 2 ],
                                                    "source": [ "laz", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swup", 2 ],
                                                    "source": [ "lup", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pc", 0 ],
                                                    "source": [ "p", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "state", 0 ],
                                                    "source": [ "pak", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ps", 0 ],
                                                    "source": [ "pc", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swaz", 1 ],
                                                    "source": [ "raz", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swup", 1 ],
                                                    "source": [ "rup", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swaz", 0 ],
                                                    "order": 1,
                                                    "source": [ "sel", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swup", 0 ],
                                                    "order": 0,
                                                    "source": [ "sel", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "change", 0 ],
                                                    "source": [ "state", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "azsend", 0 ],
                                                    "source": [ "swaz", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "upsend", 0 ],
                                                    "source": [ "swup", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 748.888864338398, 560.7407223582268, 99.0, 22.0 ],
                                    "text": "p player2_assign"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-105",
                                    "lastchannelcount": 9,
                                    "maxclass": "mc.live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 748.888864338398, 897.0370076298714, 187.0, 129.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "mc.live.gain~[2]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "mc.live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "mc.live.gain~[1]"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-99",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 635.9477325081825, 246.40523654222488, 89.0, 22.0 ],
                                    "text": "s granu_period"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-12",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 533.9869449734688, 246.40523654222488, 73.0, 22.0 ],
                                    "text": "s granu_dur"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-97",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "multichannelsignal" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ -21292.0, -21249.0, 1437.0, 844.0 ],
                                        "visible": 1,
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-36",
                                                    "maxclass": "button",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1136.0, 344.0, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-32",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 647.0, 115.5106366276741, 133.0, 22.0 ],
                                                    "text": "scale 0. 99999 0. 1200."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-30",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 256.7164087295532, 134.0, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-29",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 647.0, 36.0, 93.0, 22.0 ],
                                                    "text": "random 100000"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-25",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 256.7164087295532, -9.07462739944458, 79.0, 22.0 ],
                                                    "text": "r bothhands1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-24",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 257.0, 173.0, 409.0, 22.0 ],
                                                    "text": "switch 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 256.47059893608093, 200.00000834465027, 97.0, 22.0 ],
                                                    "text": "prepend position"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-22",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 978.125, 850.0, 118.0, 22.0 ],
                                                    "text": "prepend outputgains"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-21",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "bang" ],
                                                    "patching_rect": [ 1089.0625, 503.125, 215.0, 22.0 ],
                                                    "text": "t b b"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-92",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1285.9375, 592.1875, 133.0, 22.0 ],
                                                    "text": "random @range -12 12"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-149",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 554.4, 19.0, 57.0, 22.0 ],
                                                    "text": "r endPos"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-145",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 527.8, -5.0, 60.0, 22.0 ],
                                                    "text": "r startPos"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 452.0, 130.0, 152.0, 22.0 ],
                                                    "text": "scale 0. 360. 0. 1200."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-16",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1115.0, 53.5106366276741, 87.0, 22.0 ],
                                                    "text": "r selected_up1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-14",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 69.02797865867615, 27.0, 75.0, 22.0 ],
                                                    "text": "r experience"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-104",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1115.0, 115.5106366276741, 103.0, 22.0 ],
                                                    "text": "scale 0. 90. 0. 60."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "format": 6,
                                                    "id": "obj-102",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 1115.0, 155.5106366276741, 50.0, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-98",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 1095.0, 191.5106366276741, 40.0, 22.0 ],
                                                    "text": "* 100."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-89",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1095.0, 254.5106366276741, 84.0, 22.0 ],
                                                    "text": "resampling $1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 980.0, 233.5106366276741, 87.0, 22.0 ],
                                                    "text": "r granu_period"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-12",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 881.0, 233.5106366276741, 71.0, 22.0 ],
                                                    "text": "r granu_dur"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-10",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 68.3823516368866, 657.3529286384583, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-45",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 452.0, 27.0, 87.0, 22.0 ],
                                                    "text": "r selected_az1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-72",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 100.64562511444092, 139.39299136400223, 29.5, 22.0 ],
                                                    "text": "0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-71",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 69.02797865867615, 138.6576972603798, 24.0, 24.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-66",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 100.64562511444092, 111.45181542634964, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-65",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 69.02797865867615, 78.36358076334, 48.0, 22.0 ],
                                                    "text": "change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-28",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 68.29268455505371, 178.36357885599136, 107.46268272399902, 22.0 ],
                                                    "text": "gate"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-15",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 157.26327109336853, 84.98122769594193, 61.0, 22.0 ],
                                                    "text": "r playing1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "attr": "play",
                                                    "id": "obj-39",
                                                    "maxclass": "attrui",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 68.29268455505371, 233.5106366276741, 136.5145244896412, 22.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-20",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 306.0, 238.0, 66.0, 22.0 ],
                                                    "text": "r granpos1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 979.6875, 509.41178596019745, 29.5, 22.0 ],
                                                    "text": "+ 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-8",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 979.6875, 469.4117842912674, 79.0, 22.0 ],
                                                    "text": "r bothhands1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-7",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "" ],
                                                    "patching_rect": [ 980.0, 554.6875, 128.0625, 22.0 ],
                                                    "text": "gate 2 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 979.6875, 673.4375, 95.0, 22.0 ],
                                                    "text": "1 0 0 0 0 0 0 0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-76",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1089.0625, 673.4375, 95.0, 22.0 ],
                                                    "text": "1 2 3 4 5 6 7 8 9"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-61",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "int" ],
                                                    "patching_rect": [ 1089.0625, 626.5625, 180.74865782260895, 22.0 ],
                                                    "text": "t b i"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-60",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1089.0625, 718.75, 181.0, 22.0 ],
                                                    "text": "vexpr $i1 == $i2 @scalarmode 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-54",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 1089.0625, 592.1875, 115.0, 22.0 ],
                                                    "text": "random @range 2 9"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-114",
                                                    "maxclass": "newobj",
                                                    "numinlets": 9,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "multichannelsignal" ],
                                                    "patching_rect": [ 67.46988201141357, 434.9397751092911, 931.8860948681831, 22.0 ],
                                                    "text": "mc.pack~ 9"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-19",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 10,
                                                    "outlettype": [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
                                                    "patching_rect": [ 68.64406943321228, 321.95122718811035, 1044.4871871843934, 22.0 ],
                                                    "saved_object_attributes": {
                                                        "resampleaudioinput": 0,
                                                        "verbose": 1
                                                    },
                                                    "text": "mubu.granular~ 9 voiceDB @audio audio @play 0 @outputposition 1 @duplicatechannels 1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 265.97059893608093, 219.0, 267.2605011463165, 219.0, 267.2605011463165, 306.0, 78.14406943321228, 306.0 ],
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 1 ],
                                                    "midpoints": [ 1124.5, 182.0, 1125.5, 182.0 ],
                                                    "source": [ "obj-102", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-102", 0 ],
                                                    "source": [ "obj-104", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-10", 0 ],
                                                    "source": [ "obj-114", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 890.5, 306.0, 78.14406943321228, 306.0 ],
                                                    "source": [ "obj-12", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 989.5, 306.0, 78.14406943321228, 306.0 ],
                                                    "source": [ "obj-13", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-65", 0 ],
                                                    "source": [ "obj-14", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 3 ],
                                                    "order": 1,
                                                    "source": [ "obj-145", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 3 ],
                                                    "order": 0,
                                                    "source": [ "obj-145", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 4 ],
                                                    "order": 1,
                                                    "source": [ "obj-149", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 4 ],
                                                    "order": 0,
                                                    "source": [ "obj-149", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 1 ],
                                                    "source": [ "obj-15", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-104", 0 ],
                                                    "source": [ "obj-16", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 1 ],
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 8 ],
                                                    "source": [ "obj-19", 8 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 7 ],
                                                    "source": [ "obj-19", 7 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 6 ],
                                                    "source": [ "obj-19", 6 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 5 ],
                                                    "source": [ "obj-19", 5 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 4 ],
                                                    "source": [ "obj-19", 4 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 3 ],
                                                    "source": [ "obj-19", 3 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 2 ],
                                                    "source": [ "obj-19", 2 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 1 ],
                                                    "source": [ "obj-19", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-114", 0 ],
                                                    "source": [ "obj-19", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-21", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-19", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-36", 0 ],
                                                    "midpoints": [ 1103.6312566176057, 345.0 ],
                                                    "order": 0,
                                                    "source": [ "obj-19", 9 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 315.5, 306.0, 78.14406943321228, 306.0 ],
                                                    "source": [ "obj-20", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 1 ],
                                                    "source": [ "obj-21", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-92", 0 ],
                                                    "source": [ "obj-21", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 987.625, 874.536604642868, 52.51221585273743, 874.536604642868, 52.51221585273743, 317.53660464286804, 78.14406943321228, 317.53660464286804 ],
                                                    "source": [ "obj-22", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-1", 0 ],
                                                    "source": [ "obj-24", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-30", 0 ],
                                                    "source": [ "obj-25", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-28", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-32", 0 ],
                                                    "source": [ "obj-29", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 0 ],
                                                    "source": [ "obj-30", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-24", 2 ],
                                                    "source": [ "obj-32", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-29", 0 ],
                                                    "midpoints": [ 1145.5, 345.0, 1145.5, 288.0, 792.0, 288.0, 792.0, 18.0, 656.5, 18.0 ],
                                                    "source": [ "obj-36", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "source": [ "obj-39", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "source": [ "obj-45", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-61", 0 ],
                                                    "source": [ "obj-54", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-22", 0 ],
                                                    "source": [ "obj-60", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 1 ],
                                                    "source": [ "obj-61", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-76", 0 ],
                                                    "source": [ "obj-61", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-66", 0 ],
                                                    "order": 0,
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-71", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-65", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-72", 0 ],
                                                    "source": [ "obj-66", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-54", 0 ],
                                                    "source": [ "obj-7", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-28", 0 ],
                                                    "source": [ "obj-71", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-39", 0 ],
                                                    "source": [ "obj-72", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-60", 0 ],
                                                    "source": [ "obj-76", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-19", 0 ],
                                                    "midpoints": [ 1104.5, 306.0, 78.14406943321228, 306.0 ],
                                                    "source": [ "obj-89", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-7", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-98", 0 ],
                                                    "midpoints": [ 1295.4375, 630.0, 1443.4375, 630.0, 1443.4375, 477.0, 1321.0, 477.0, 1321.0, 189.0, 1104.5, 189.0 ],
                                                    "source": [ "obj-92", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-89", 0 ],
                                                    "source": [ "obj-98", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 533.9869449734688, 660.7843345999718, 109.0, 22.0 ],
                                    "text": "p player1_granular"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-47",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 0,
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 34.0, 77.0, 1437.0, 844.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "a1",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 60.0, 85.0, 22.0 ],
                                                    "text": "r Rup1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 150.0, 60.0, 85.0, 22.0 ],
                                                    "text": "r Lup1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a3",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 250.0, 60.0, 85.0, 22.0 ],
                                                    "text": "r RupValid1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 350.0, 60.0, 85.0, 22.0 ],
                                                    "text": "r LupValid1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a5",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 450.0, 60.0, 85.0, 22.0 ],
                                                    "text": "r bodyactive1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "a6",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 550.0, 60.0, 85.0, 22.0 ],
                                                    "text": "r upoffset"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pak",
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 120.0, 520.0, 22.0 ],
                                                    "text": "pak -90. -90. 0 0 0 -70."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "state",
                                                    "linecount": 2,
                                                    "maxclass": "newobj",
                                                    "numinlets": 6,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 50.0, 175.0, 790.0, 36.0 ],
                                                    "presentation_linecount": 2,
                                                    "text": "expr $i5 * (3 * ($i3 && $i4 && $f1 >= 0. && $f2 >= 0.) + (($i3 && $i4 && $f1 >= 0. && $f2 >= 0.) == 0) * (($i3 && $f1 >= $f6 && ($i4 == 0 || $f2 < $f6 || $f1 >= $f2)) + 2 * ($i4 && $f2 >= $f6 && ($i3 == 0 || $f1 < $f6 || $f2 > $f1))))"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "change",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 50.0, 225.0, 48.0, 22.0 ],
                                                    "text": "change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "sel",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 50.0, 275.0, 80.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "raz",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 130.0, 330.0, 55.0, 22.0 ],
                                                    "text": "r Raz1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "laz",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 195.0, 330.0, 55.0, 22.0 ],
                                                    "text": "r Laz1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "rup",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 340.0, 330.0, 55.0, 22.0 ],
                                                    "text": "r Rup1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "lup",
                                                    "maxclass": "newobj",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 405.0, 330.0, 55.0, 22.0 ],
                                                    "text": "r Lup1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "swaz",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 65.0, 380.0, 150.0, 22.0 ],
                                                    "text": "switch 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "swup",
                                                    "maxclass": "newobj",
                                                    "numinlets": 3,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 275.0, 380.0, 150.0, 22.0 ],
                                                    "text": "switch 2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "azsend",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 65.0, 430.0, 95.0, 22.0 ],
                                                    "text": "s selected_az1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "upsend",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 275.0, 430.0, 95.0, 22.0 ],
                                                    "text": "s selected_up1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "p",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 490.0, 275.0, 40.0, 22.0 ],
                                                    "text": "> 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "pc",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 3,
                                                    "outlettype": [ "", "int", "int" ],
                                                    "patching_rect": [ 490.0, 380.0, 48.0, 22.0 ],
                                                    "text": "change"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "ps",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 490.0, 430.0, 75.0, 22.0 ],
                                                    "text": "s playing1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "b",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 600.0, 380.0, 40.0, 22.0 ],
                                                    "text": "== 3"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "bs",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 600.0, 430.0, 90.0, 22.0 ],
                                                    "text": "s bothhands1"
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 0 ],
                                                    "source": [ "a1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 1 ],
                                                    "source": [ "a2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 2 ],
                                                    "source": [ "a3", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 3 ],
                                                    "source": [ "a4", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 4 ],
                                                    "source": [ "a5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pak", 5 ],
                                                    "source": [ "a6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "bs", 0 ],
                                                    "source": [ "b", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "b", 0 ],
                                                    "midpoints": [ 59.5, 261.0, 609.5, 261.0 ],
                                                    "order": 0,
                                                    "source": [ "change", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "p", 0 ],
                                                    "order": 1,
                                                    "source": [ "change", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "sel", 0 ],
                                                    "order": 2,
                                                    "source": [ "change", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swaz", 2 ],
                                                    "source": [ "laz", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swup", 2 ],
                                                    "source": [ "lup", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "pc", 0 ],
                                                    "source": [ "p", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "state", 0 ],
                                                    "source": [ "pak", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "ps", 0 ],
                                                    "source": [ "pc", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swaz", 1 ],
                                                    "source": [ "raz", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swup", 1 ],
                                                    "source": [ "rup", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swaz", 0 ],
                                                    "midpoints": [ 120.5, 315.0, 74.5, 315.0 ],
                                                    "order": 1,
                                                    "source": [ "sel", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "swup", 0 ],
                                                    "midpoints": [ 120.5, 315.0, 284.5, 315.0 ],
                                                    "order": 0,
                                                    "source": [ "sel", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "change", 0 ],
                                                    "source": [ "state", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "azsend", 0 ],
                                                    "source": [ "swaz", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "upsend", 0 ],
                                                    "source": [ "swup", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 533.9869449734688, 560.465124964714, 99.0, 22.0 ],
                                    "text": "p player1_assign"
                                }
                            },
                            {
                                "box": {
                                    "alignviewbounds": 0,
                                    "autobounds": 0,
                                    "autorefreshrate": 0,
                                    "autoupdate": 120.0,
                                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "bgcolordefault": 1,
                                    "bufferchooser_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "bufferchooser_bgcolordefault": 0,
                                    "bufferchooser_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                                    "bufferchooser_fgcolordefault": 0,
                                    "bufferchooser_position": 1,
                                    "bufferchooser_shape": "buttons",
                                    "bufferchooser_size": 15,
                                    "bufferchooser_visible": 1,
                                    "continousediting": 0,
                                    "cursor_circleedgecolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_circlefillcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_circlefilled": 1,
                                    "cursor_circleheight": 3.0,
                                    "cursor_circlewidth": 3.0,
                                    "cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_crossheight": -1.0,
                                    "cursor_crosswidth": -1.0,
                                    "cursor_followmouse": 0,
                                    "cursor_label": "",
                                    "cursor_labelcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "cursor_labelfontsize": 12,
                                    "cursor_labelposition": 0,
                                    "cursor_labelxoffset": 0,
                                    "cursor_labelyoffset": 0,
                                    "cursor_nearest": 0,
                                    "cursor_nearestcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_noringoffset": 0,
                                    "cursor_numextracursors": 0,
                                    "cursor_outputdata": 0,
                                    "cursor_position": [ 0.0, 0.0 ],
                                    "cursor_shape": "bar",
                                    "cursor_size": 3.0,
                                    "cursor_sizeunit": 0,
                                    "cursor_symbol": "circle",
                                    "cursor_symboledgecolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_symbolfillcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_symbolfilled": 1,
                                    "cursor_symbolheight": 3.0,
                                    "cursor_symbolwidth": 3.0,
                                    "cursor_visible": 1,
                                    "dirtypatcher": 1,
                                    "domain_bounds": [ 15.531823529096343, 1546.4429486063204 ],
                                    "domainruler_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "domainruler_bgcolordefault": 1,
                                    "domainruler_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                                    "domainruler_fgcolordefault": 1,
                                    "domainruler_grid": 0,
                                    "domainruler_position": 0,
                                    "domainruler_size": 15,
                                    "domainruler_unit": 3,
                                    "domainruler_visible": 1,
                                    "domainscrollbar_color": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "domainscrollbar_colordefault": 1,
                                    "domainscrollbar_size": 10,
                                    "domainscrollbar_visible": 1,
                                    "embed": 0,
                                    "enablemousewheel": 1,
                                    "externalfiles": 1,
                                    "filename": "",
                                    "foremost": 1,
                                    "freeze": 0,
                                    "id": "obj-14",
                                    "layout": 0,
                                    "maintrack": -1,
                                    "maxclass": "imubu",
                                    "mousewheelscroll": 1,
                                    "mousewheelshiftstep": 40,
                                    "mousewheelstep": 4,
                                    "name": "voiceArchive1",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "opacity": 0.0,
                                    "opacityprogressive": 0,
                                    "orientation": 0,
                                    "outlettype": [ "" ],
                                    "outputkeys": 0,
                                    "outputmouse": 0,
                                    "outputrangeselection": 0,
                                    "outputselection": 0,
                                    "outputtimeselection": 0,
                                    "outputvalues": 0,
                                    "outputviewname": 0,
                                    "parameter_enable": 0,
                                    "patching_rect": [ 40.0, 975.0, 251.0, 224.0 ],
                                    "rangeruler_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "rangeruler_bgcolordefault": 1,
                                    "rangeruler_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                                    "rangeruler_fgcolordefault": 1,
                                    "rangeruler_grid": 0,
                                    "rangeruler_size": 30,
                                    "rangeruler_visible": 1,
                                    "refreshrate": 120.0,
                                    "region_color": [ 0.52549022436142, 0.541176497936249, 0.509803950786591, 1.0 ],
                                    "region_visible": 1,
                                    "resamplefiles": 0,
                                    "ringmaster": -1,
                                    "snaprate": 1000.0,
                                    "splitbars_color": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "splitbars_size": 2,
                                    "splitbars_visible": 1,
                                    "tabs_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "tabs_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                                    "tabs_position": 0,
                                    "tabs_size": 20,
                                    "tabs_visible": 1,
                                    "tabsbgcolordefault": 1,
                                    "tabsfgcolordefault": 1,
                                    "tool": "edit",
                                    "toolbar_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "toolbar_position": 1,
                                    "toolbar_size": 30,
                                    "toolbar_transposition": 0,
                                    "toolbar_visible": 1,
                                    "toolbarbgcolordefault": 1,
                                    "useplaceholders": 1,
                                    "verbose": 1,
                                    "vieworder": [ "default" ],
                                    "windresize": 0
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-141",
                                    "lastchannelcount": 0,
                                    "maxclass": "live.gain~",
                                    "numinlets": 2,
                                    "numoutlets": 5,
                                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 40.0, 1285.0, 48.0, 136.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "live.gain~[3]",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "live.gain~[3]",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "live.gain~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-140",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "signal", "" ],
                                    "patching_rect": [ 40.0, 1240.0, 333.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "resampleaudioinput": 0,
                                        "verbose": 1
                                    },
                                    "text": "mubu.granular~ voiceArchive1 @audio audio @bufferindex 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-138",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 40.0, 800.0, 251.0, 22.0 ],
                                    "text": "readtrack audio recordings/speech_0001.wav"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-134",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 40.0, 760.0, 195.0, 22.0 ],
                                    "text": "addtrack audio @samplerate audio"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-132",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 40.0, 930.0, 117.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "dirtypatcher": 1,
                                        "embed": 0,
                                        "externalfiles": 1,
                                        "maintrack": -1,
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0,
                                        "resamplefiles": 0,
                                        "ringmaster": -1,
                                        "savegui": 0,
                                        "snaprate": 1000.0,
                                        "verbose": 1
                                    },
                                    "text": "mubu voiceArchive3"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-131",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 40.0, 885.0, 117.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "dirtypatcher": 1,
                                        "embed": 0,
                                        "externalfiles": 1,
                                        "maintrack": -1,
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0,
                                        "resamplefiles": 0,
                                        "ringmaster": -1,
                                        "savegui": 0,
                                        "snaprate": 1000.0,
                                        "verbose": 1
                                    },
                                    "text": "mubu voiceArchive2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-127",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 40.0, 840.0, 117.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "dirtypatcher": 1,
                                        "embed": 0,
                                        "externalfiles": 1,
                                        "maintrack": -1,
                                        "parameter_enable": 0,
                                        "parameter_mappable": 0,
                                        "resamplefiles": 0,
                                        "ringmaster": -1,
                                        "savegui": 0,
                                        "snaprate": 1000.0,
                                        "verbose": 1
                                    },
                                    "text": "mubu voiceArchive1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-125",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 370.0, 455.0, 123.0, 22.0 ],
                                    "text": "duplicate archiveRaw"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-121",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 275.0, 585.0, 38.0, 22.0 ],
                                    "text": "zl.reg"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-118",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 235.0, 500.0, 79.0, 22.0 ],
                                    "text": "prepend crop"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-103",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "bang", "bang", "bang" ],
                                    "patching_rect": [ 40.0, 410.0, 349.0, 22.0 ],
                                    "text": "t b b b"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-101",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 40.0, 365.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-87",
                                    "linecount": 3,
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 40.0, 550.0, 218.0, 50.0 ],
                                    "text": "sprintf writewave Patcher:/recordings/speech_%04ld.wav"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-86",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 120.0, 455.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-75",
                                    "maxclass": "newobj",
                                    "numinlets": 5,
                                    "numoutlets": 4,
                                    "outlettype": [ "int", "", "", "int" ],
                                    "patching_rect": [ 40.0, 500.0, 61.0, 22.0 ],
                                    "text": "counter"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-70",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 40.0, 455.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-68",
                                    "maxclass": "newobj",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 235.0, 455.0, 72.0, 22.0 ],
                                    "text": "r speechdur"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-67",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1789.3616893291473, 636.1702082157135, 74.0, 22.0 ],
                                    "text": "s speechdur"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-62",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1789.3616893291473, 591.4893574714661, 34.0, 22.0 ],
                                    "text": "pack"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-57",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 40.0, 635.0, 123.0, 22.0 ],
                                    "text": "buffer~ archiveExport"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-55",
                                    "maxclass": "newobj",
                                    "numinlets": 3,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 385.0, 210.0, 116.0, 22.0 ],
                                    "text": "record~ archiveRaw"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-37",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "patching_rect": [ 1789.3616893291473, 157.44680738449097, 61.0, 22.0 ],
                                    "text": "delay 500"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-27",
                                    "index": 3,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 775.8621096611023, 150.71557635068893, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-24",
                                    "index": 2,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 385.0, 45.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-146",
                                    "lastchannelcount": 9,
                                    "maxclass": "mc.live.gain~",
                                    "numinlets": 1,
                                    "numoutlets": 4,
                                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                                    "parameter_enable": 1,
                                    "patching_rect": [ 534.0807354748249, 889.9159133434296, 187.0, 129.0 ],
                                    "saved_attribute_attributes": {
                                        "valueof": {
                                            "parameter_longname": "mc.live.gain~",
                                            "parameter_mmax": 6.0,
                                            "parameter_mmin": -70.0,
                                            "parameter_modmode": 3,
                                            "parameter_shortname": "mc.live.gain~",
                                            "parameter_type": 0,
                                            "parameter_unitstyle": 4
                                        }
                                    },
                                    "varname": "mc.live.gain~"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-23",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 635.9477325081825, 107.18954586982727, 70.0, 22.0 ],
                                    "text": "loadmess 5"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-22",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 533.9869449734688, 107.18954586982727, 83.0, 22.0 ],
                                    "text": "loadmess 100"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-17",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1789.3616893291473, 1361.7021179199219, 68.0, 22.0 ],
                                    "text": "s granpos1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-123",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1989.3616878986359, 536.1702089309692, 82.0, 22.0 ],
                                    "text": "expr $f1 + $f2"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-120",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 1989.3616878986359, 491.4893581867218, 61.0, 22.0 ],
                                    "text": "unpack f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-119",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1989.3616878986359, 402.12765669822693, 47.0, 22.0 ],
                                    "text": "getsize"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-117",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1789.3616893291473, 353.19148683547974, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-115",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1789.3616893291473, 402.12765669822693, 35.0, 22.0 ],
                                    "text": "get 0"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-113",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1789.3616893291473, 446.80850744247437, 158.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "savegui": 0,
                                        "verbose": 1
                                    },
                                    "text": "mubu.track voiceDB speech"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-110",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "float" ],
                                    "patching_rect": [ 1789.3616893291473, 491.4893581867218, 61.0, 22.0 ],
                                    "text": "unpack f f"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-109",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 2180.851048231125, 536.1702089309692, 42.0, 22.0 ],
                                    "text": "get $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-100",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 2180.851048231125, 491.4893581867218, 61.0, 22.0 ],
                                    "text": "route size"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-94",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 3,
                                    "outlettype": [ "", "", "" ],
                                    "patching_rect": [ 1989.3616878986359, 446.80850744247437, 158.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "savegui": 0,
                                        "verbose": 1
                                    },
                                    "text": "mubu.track voiceDB speech"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-93",
                                    "maxclass": "button",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1789.3616893291473, 202.1276581287384, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-91",
                                    "linecount": 5,
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 4,
                                    "outlettype": [ "", "", "int", "" ],
                                    "patching_rect": [ 1789.3616893291473, 246.80850887298584, 330.0, 77.0 ],
                                    "saved_object_attributes": {
                                        "verbose": 1
                                    },
                                    "text": "mubu.process voiceDB audio descr:gate @name speech @process 0 @timetagged 1 @gate.colindex 4 @gate.numcols 1 @gate.threshold -40 @gate.offthresh -50 @gate.durthresh 50 @gate.mininter 100 @gate.duration 1 @gate.mean 1"
                                }
                            },
                            {
                                "box": {
                                    "hidden": 1,
                                    "id": "obj-29",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1875.3616893291473, 716.0, 70.0, 22.0 ],
                                    "text": "loadmess 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-33",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1875.3616893291473, 760.0, 22.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-46",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patcher": {
                                        "fileversion": 1,
                                        "appversion": {
                                            "major": 9,
                                            "minor": 1,
                                            "revision": 4,
                                            "architecture": "x64",
                                            "modernui": 1
                                        },
                                        "classnamespace": "box",
                                        "rect": [ 80.0, 100.0, 1000.0, 450.0 ],
                                        "boxes": [
                                            {
                                                "box": {
                                                    "id": "obj-13",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 615.0, 190.0, 71.0, 20.0 ],
                                                    "text": "clear region"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-11",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 560.0, 190.0, 29.5, 22.0 ],
                                                    "text": "0 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-9",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "bang", "" ],
                                                    "patching_rect": [ 560.0, 145.0, 34.0, 22.0 ],
                                                    "text": "sel 0"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "hidden": 1,
                                                    "id": "obj-2",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 410.0, 205.0, 91.0, 22.0 ],
                                                    "text": "loadmess set 1"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "hidden": 1,
                                                    "id": "obj-1",
                                                    "index": 2,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "patching_rect": [ 410.0, 45.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "format": 6,
                                                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                                                    "id": "obj-7",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 560.0, 250.0, 60.0, 22.0 ],
                                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                                                    "triscale": 0.9
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.38, 0.38, 0.38, 1.0 ],
                                                    "bgcolor2": [ 0.3, 0.3, 0.3, 1.0 ],
                                                    "bgfillcolor_angle": 270.0,
                                                    "bgfillcolor_autogradient": 0.0,
                                                    "bgfillcolor_color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                                    "bgfillcolor_color1": [ 0.38, 0.38, 0.38, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.3, 0.3, 0.3, 1.0 ],
                                                    "bgfillcolor_proportion": 0.39,
                                                    "bgfillcolor_type": "gradient",
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "obj-8",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 560.0, 295.0, 83.0, 22.0 ],
                                                    "text": "positionvar $1",
                                                    "textcolor": [ 0.92, 0.92, 0.92, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.38, 0.38, 0.38, 1.0 ],
                                                    "bgcolor2": [ 0.3, 0.3, 0.3, 1.0 ],
                                                    "bgfillcolor_angle": 270.0,
                                                    "bgfillcolor_autogradient": 0.0,
                                                    "bgfillcolor_color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                                    "bgfillcolor_color1": [ 0.38, 0.38, 0.38, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.3, 0.3, 0.3, 1.0 ],
                                                    "bgfillcolor_proportion": 0.39,
                                                    "bgfillcolor_type": "gradient",
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "obj-151",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 860.0, 295.0, 85.0, 22.0 ],
                                                    "text": "durationvar $1",
                                                    "textcolor": [ 0.92, 0.92, 0.92, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "format": 6,
                                                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                                                    "id": "obj-157",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 860.0, 250.0, 60.0, 22.0 ],
                                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                                                    "triscale": 0.9
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.866667, 0.866667, 0.866667, 1.0 ],
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "format": 6,
                                                    "htricolor": [ 0.87, 0.82, 0.24, 1.0 ],
                                                    "id": "obj-170",
                                                    "maxclass": "flonum",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "", "bang" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 710.0, 250.0, 60.0, 22.0 ],
                                                    "textcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                                    "tricolor": [ 0.75, 0.75, 0.75, 1.0 ],
                                                    "triscale": 0.9
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.38, 0.38, 0.38, 1.0 ],
                                                    "bgcolor2": [ 0.3, 0.3, 0.3, 1.0 ],
                                                    "bgfillcolor_angle": 270.0,
                                                    "bgfillcolor_autogradient": 0.0,
                                                    "bgfillcolor_color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                                    "bgfillcolor_color1": [ 0.38, 0.38, 0.38, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.3, 0.3, 0.3, 1.0 ],
                                                    "bgfillcolor_proportion": 0.39,
                                                    "bgfillcolor_type": "gradient",
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "obj-171",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 710.0, 295.0, 69.0, 22.0 ],
                                                    "text": "duration $1",
                                                    "textcolor": [ 0.92, 0.92, 0.92, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-5",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 410.0, 250.0, 20.0, 20.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.38, 0.38, 0.38, 1.0 ],
                                                    "bgcolor2": [ 0.3, 0.3, 0.3, 1.0 ],
                                                    "bgfillcolor_angle": 270.0,
                                                    "bgfillcolor_autogradient": 0.0,
                                                    "bgfillcolor_color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                                    "bgfillcolor_color1": [ 0.38, 0.38, 0.38, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.3, 0.3, 0.3, 1.0 ],
                                                    "bgfillcolor_proportion": 0.39,
                                                    "bgfillcolor_type": "gradient",
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "obj-6",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 410.0, 295.0, 72.0, 22.0 ],
                                                    "text": "centered $1",
                                                    "textcolor": [ 0.92, 0.92, 0.92, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-18",
                                                    "maxclass": "toggle",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "int" ],
                                                    "parameter_enable": 0,
                                                    "patching_rect": [ 410.0, 100.0, 20.0, 20.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "bgcolor": [ 0.38, 0.38, 0.38, 1.0 ],
                                                    "bgcolor2": [ 0.3, 0.3, 0.3, 1.0 ],
                                                    "bgfillcolor_angle": 270.0,
                                                    "bgfillcolor_autogradient": 0.0,
                                                    "bgfillcolor_color": [ 0.290196, 0.309804, 0.301961, 1.0 ],
                                                    "bgfillcolor_color1": [ 0.38, 0.38, 0.38, 1.0 ],
                                                    "bgfillcolor_color2": [ 0.3, 0.3, 0.3, 1.0 ],
                                                    "bgfillcolor_proportion": 0.39,
                                                    "bgfillcolor_type": "gradient",
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "gradient": 1,
                                                    "id": "obj-23",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 410.0, 145.0, 100.0, 22.0 ],
                                                    "text": "outputposition $1",
                                                    "textcolor": [ 0.92, 0.92, 0.92, 1.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "fontname": "Arial",
                                                    "fontsize": 12.0,
                                                    "hidden": 1,
                                                    "id": "obj-4",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 410.0, 365.0, 125.0, 22.0 ],
                                                    "text": "s mubu-granular-help"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-3",
                                                    "maxclass": "comment",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 40.0, 15.0, 340.0, 22.0 ],
                                                    "text": "粒の実際の再生範囲を表示"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-43",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 2,
                                                    "outlettype": [ "float", "float" ],
                                                    "patching_rect": [ 40.0, 100.0, 105.0, 22.0 ],
                                                    "text": "unpack 1. 2."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-42",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 195.0, 105.0, 22.0 ],
                                                    "text": "pack 1. 2."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-41",
                                                    "maxclass": "newobj",
                                                    "numinlets": 1,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 180.0, 245.0, 167.0, 22.0 ],
                                                    "text": "loadmess region color orange"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-40",
                                                    "maxclass": "newobj",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "float" ],
                                                    "patching_rect": [ 125.0, 145.0, 42.0, 22.0 ],
                                                    "text": "+ 100."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-37",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 245.0, 75.0, 22.0 ],
                                                    "text": "region $1 $2"
                                                }
                                            },
                                            {
                                                "box": {
                                                    "id": "obj-35",
                                                    "maxclass": "message",
                                                    "numinlets": 2,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 180.0, 100.0, 145.0, 22.0 ],
                                                    "text": "-52.903481 100."
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-44",
                                                    "index": 1,
                                                    "maxclass": "inlet",
                                                    "numinlets": 0,
                                                    "numoutlets": 1,
                                                    "outlettype": [ "" ],
                                                    "patching_rect": [ 40.0, 45.0, 30.0, 30.0 ]
                                                }
                                            },
                                            {
                                                "box": {
                                                    "comment": "",
                                                    "id": "obj-45",
                                                    "index": 1,
                                                    "maxclass": "outlet",
                                                    "numinlets": 1,
                                                    "numoutlets": 0,
                                                    "patching_rect": [ 40.0, 310.0, 30.0, 30.0 ]
                                                }
                                            }
                                        ],
                                        "lines": [
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-18", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-1", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "midpoints": [ 569.5, 235.0, 49.5, 235.0 ],
                                                    "source": [ "obj-11", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 869.5, 341.0, 419.5, 341.0 ],
                                                    "source": [ "obj-151", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-151", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-157", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-171", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-170", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 719.5, 349.0, 419.5, 349.0 ],
                                                    "source": [ "obj-171", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-23", 0 ],
                                                    "hidden": 1,
                                                    "order": 1,
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-9", 0 ],
                                                    "midpoints": [ 419.5, 132.5, 569.5, 132.5 ],
                                                    "order": 0,
                                                    "source": [ "obj-18", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-5", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-2", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 419.5, 177.0, 400.0, 177.0, 400.0, 355.0, 419.5, 355.0 ],
                                                    "source": [ "obj-23", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "source": [ "obj-37", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 1 ],
                                                    "midpoints": [ 134.5, 181.0, 135.5, 181.0 ],
                                                    "source": [ "obj-40", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-45", 0 ],
                                                    "midpoints": [ 189.5, 288.5, 49.5, 288.5 ],
                                                    "source": [ "obj-41", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-37", 0 ],
                                                    "source": [ "obj-42", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 1 ],
                                                    "midpoints": [ 135.5, 133.5, 157.5, 133.5 ],
                                                    "source": [ "obj-43", 1 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-40", 0 ],
                                                    "midpoints": [ 49.5, 133.5, 134.5, 133.5 ],
                                                    "order": 0,
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-42", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-43", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-35", 1 ],
                                                    "midpoints": [ 49.5, 87.5, 315.5, 87.5 ],
                                                    "order": 0,
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-43", 0 ],
                                                    "order": 1,
                                                    "source": [ "obj-44", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-6", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-5", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-6", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-8", 0 ],
                                                    "hidden": 1,
                                                    "source": [ "obj-7", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-4", 0 ],
                                                    "hidden": 1,
                                                    "midpoints": [ 569.5, 327.0, 419.5, 327.0 ],
                                                    "source": [ "obj-8", 0 ]
                                                }
                                            },
                                            {
                                                "patchline": {
                                                    "destination": [ "obj-11", 0 ],
                                                    "source": [ "obj-9", 0 ]
                                                }
                                            }
                                        ]
                                    },
                                    "patching_rect": [ 1789.3616893291473, 834.0, 108.0, 22.0 ],
                                    "text": "p highlight position"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-13",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1789.3616893291473, 1227.6595656871796, 75.0, 22.0 ],
                                    "text": "route visible"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-81",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 1789.3616893291473, 1182.9787149429321, 75.0, 22.0 ],
                                    "text": "route cursor"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "format": 6,
                                    "id": "obj-82",
                                    "maxclass": "flonum",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "bang" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1789.3616893291473, 1272.340416431427, 58.0, 22.0 ]
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "hidden": 1,
                                    "id": "obj-26",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 1789.3616893291473, 1317.0212671756744, 99.0, 22.0 ],
                                    "text": "prepend position"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-80",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 533.9869449734688, 186.92811048030853, 71.0, 22.0 ],
                                    "text": "duration $1"
                                }
                            },
                            {
                                "box": {
                                    "fontname": "Arial",
                                    "fontsize": 12.0,
                                    "id": "obj-7",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 635.9477325081825, 186.92811048030853, 61.0, 22.0 ],
                                    "text": "period $1"
                                }
                            },
                            {
                                "box": {
                                    "alignviewbounds": 0,
                                    "autobounds": 0,
                                    "autorefreshrate": 0,
                                    "autoupdate": 120.0,
                                    "bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "bgcolordefault": 1,
                                    "bufferchooser_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "bufferchooser_bgcolordefault": 1,
                                    "bufferchooser_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                                    "bufferchooser_fgcolordefault": 0,
                                    "bufferchooser_position": 1,
                                    "bufferchooser_shape": "buttons",
                                    "bufferchooser_size": 15,
                                    "bufferchooser_visible": 1,
                                    "continousediting": 0,
                                    "cursor_circleedgecolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_circlefillcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_circlefilled": 1,
                                    "cursor_circleheight": 3.0,
                                    "cursor_circlewidth": 3.0,
                                    "cursor_color": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_crossheight": -1.0,
                                    "cursor_crosswidth": -1.0,
                                    "cursor_followmouse": 0,
                                    "cursor_label": "",
                                    "cursor_labelcolor": [ 0.0, 0.0, 0.0, 1.0 ],
                                    "cursor_labelfontsize": 12,
                                    "cursor_labelposition": 0,
                                    "cursor_labelxoffset": 0,
                                    "cursor_labelyoffset": 0,
                                    "cursor_nearest": 0,
                                    "cursor_nearestcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_noringoffset": 0,
                                    "cursor_numextracursors": 0,
                                    "cursor_outputdata": 0,
                                    "cursor_position": [ 670.309960496614, 0.06666666666666667 ],
                                    "cursor_shape": "bar",
                                    "cursor_size": 3.0,
                                    "cursor_sizeunit": 0,
                                    "cursor_symbol": "circle",
                                    "cursor_symboledgecolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_symbolfillcolor": [ 1.0, 0.0, 0.0, 1.0 ],
                                    "cursor_symbolfilled": 1,
                                    "cursor_symbolheight": 3.0,
                                    "cursor_symbolwidth": 3.0,
                                    "cursor_visible": 1,
                                    "dirtypatcher": 1,
                                    "domain_bounds": [ 0.0, 4095.9791666666665 ],
                                    "domainruler_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "domainruler_bgcolordefault": 1,
                                    "domainruler_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                                    "domainruler_fgcolordefault": 1,
                                    "domainruler_grid": 0,
                                    "domainruler_position": 0,
                                    "domainruler_size": 15,
                                    "domainruler_unit": 3,
                                    "domainruler_visible": 1,
                                    "domainscrollbar_color": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "domainscrollbar_colordefault": 1,
                                    "domainscrollbar_size": 10,
                                    "domainscrollbar_visible": 1,
                                    "embed": 0,
                                    "enablemousewheel": 1,
                                    "externalfiles": 1,
                                    "filename": "",
                                    "foremost": 2,
                                    "freeze": 0,
                                    "id": "obj-77",
                                    "layout": 0,
                                    "maintrack": -1,
                                    "maxclass": "imubu",
                                    "mousewheelscroll": 1,
                                    "mousewheelshiftstep": 40,
                                    "mousewheelstep": 4,
                                    "name": "voiceDB",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "opacity": 0.0,
                                    "opacityprogressive": 0,
                                    "orientation": 0,
                                    "outlettype": [ "" ],
                                    "outputkeys": 0,
                                    "outputmouse": 0,
                                    "outputrangeselection": 0,
                                    "outputselection": 0,
                                    "outputtimeselection": 0,
                                    "outputvalues": 0,
                                    "outputviewname": 0,
                                    "parameter_enable": 0,
                                    "patching_rect": [ 1789.3616893291473, 906.382972240448, 475.0, 245.0 ],
                                    "rangeruler_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "rangeruler_bgcolordefault": 1,
                                    "rangeruler_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                                    "rangeruler_fgcolordefault": 1,
                                    "rangeruler_grid": 0,
                                    "rangeruler_size": 30,
                                    "rangeruler_visible": 1,
                                    "refreshrate": 120.0,
                                    "region_color": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "region_visible": 1,
                                    "resamplefiles": 0,
                                    "ringmaster": -1,
                                    "snaprate": 1000.0,
                                    "splitbars_color": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "splitbars_size": 2,
                                    "splitbars_visible": 1,
                                    "tabs_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "tabs_fgcolor": [ 0.85, 0.85, 0.85, 1.0 ],
                                    "tabs_position": 0,
                                    "tabs_size": 20,
                                    "tabs_visible": 1,
                                    "tabsbgcolordefault": 1,
                                    "tabsfgcolordefault": 1,
                                    "tool": "cursor",
                                    "toolbar_bgcolor": [ 0.235, 0.235, 0.235, 1.0 ],
                                    "toolbar_position": 1,
                                    "toolbar_size": 30,
                                    "toolbar_transposition": 0,
                                    "toolbar_visible": 1,
                                    "toolbarbgcolordefault": 1,
                                    "useplaceholders": 1,
                                    "verbose": 1,
                                    "vieworder": [ "default" ],
                                    "windresize": 0
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-10",
                                    "index": 1,
                                    "maxclass": "outlet",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 534.1463541984558, 1552.5423007011414, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-8",
                                    "maxclass": "message",
                                    "numinlets": 2,
                                    "numoutlets": 1,
                                    "outlettype": [ "" ],
                                    "patching_rect": [ 385.0, 155.0, 59.0, 22.0 ],
                                    "text": "record $1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-6",
                                    "maxclass": "toggle",
                                    "numinlets": 1,
                                    "numoutlets": 1,
                                    "outlettype": [ "int" ],
                                    "parameter_enable": 0,
                                    "patching_rect": [ 385.0, 100.0, 24.0, 24.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-3",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "float", "bang" ],
                                    "patching_rect": [ 40.0, 275.0, 159.0, 22.0 ],
                                    "text": "buffer~ archiveRaw 15000 1"
                                }
                            },
                            {
                                "box": {
                                    "id": "obj-2",
                                    "maxclass": "newobj",
                                    "numinlets": 1,
                                    "numoutlets": 2,
                                    "outlettype": [ "", "" ],
                                    "patching_rect": [ 40.0, 210.0, 315.0, 22.0 ],
                                    "saved_object_attributes": {
                                        "verbose": 1
                                    },
                                    "text": "mubu.record~ 1 voiceDB audio @predef 1 @maxsize 10s"
                                }
                            },
                            {
                                "box": {
                                    "comment": "",
                                    "id": "obj-1",
                                    "index": 1,
                                    "maxclass": "inlet",
                                    "numinlets": 0,
                                    "numoutlets": 1,
                                    "outlettype": [ "signal" ],
                                    "patching_rect": [ 40.0, 45.0, 30.0, 30.0 ]
                                }
                            },
                            {
                                "box": {
                                    "id": "clean-record-stop",
                                    "maxclass": "newobj",
                                    "numinlets": 2,
                                    "numoutlets": 2,
                                    "outlettype": [ "bang", "" ],
                                    "patching_rect": [ 1789.3616893291473, 112.76595664024353, 46.0, 22.0 ],
                                    "text": "sel 0"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "clean-label-1",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 40.0, 15.0, 220.0, 24.0 ],
                                    "text": "録音"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "clean-label-2",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 40.0, 330.0, 220.0, 24.0 ],
                                    "text": "WAV 保存"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "clean-label-3",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 535.0, 70.0, 220.0, 24.0 ],
                                    "text": "粒状合成・身体操作"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "clean-label-4",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 800.8621109724045, 193.81902688741684, 71.64178848266602, 24.0 ],
                                    "text": "体験状態"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "clean-label-5",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1789.3616893291473, 76.5957441329956, 220.0, 24.0 ],
                                    "text": "発声区間解析"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "clean-label-6",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 1789.3616893291473, 676.5957398414612, 220.0, 24.0 ],
                                    "text": "再生位置・波形"
                                }
                            },
                            {
                                "box": {
                                    "fontsize": 13.0,
                                    "id": "clean-label-8",
                                    "maxclass": "comment",
                                    "numinlets": 1,
                                    "numoutlets": 0,
                                    "patching_rect": [ 40.0, 725.0, 220.0, 24.0 ],
                                    "text": "アーカイブ・試作"
                                }
                            }
                        ],
                        "lines": [
                            {
                                "patchline": {
                                    "destination": [ "obj-37", 0 ],
                                    "source": [ "clean-record-stop", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "order": 1,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "midpoints": [ 49.5, 181.0, 394.5, 181.0 ],
                                    "order": 0,
                                    "source": [ "obj-1", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-109", 0 ],
                                    "source": [ "obj-100", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-103", 0 ],
                                    "source": [ "obj-101", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-137", 0 ],
                                    "source": [ "obj-102", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-121", 0 ],
                                    "midpoints": [ 214.5, 526.0, 284.5, 526.0 ],
                                    "source": [ "obj-103", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-125", 0 ],
                                    "midpoints": [ 379.5, 443.5, 379.5, 443.5 ],
                                    "source": [ "obj-103", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-70", 0 ],
                                    "source": [ "obj-103", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-151", 0 ],
                                    "source": [ "obj-105", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-139", 0 ],
                                    "source": [ "obj-106", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-152", 0 ],
                                    "source": [ "obj-108", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 0 ],
                                    "midpoints": [ 2190.351048231125, 568.7021179199219, 2089.3616893291473, 568.7021179199219, 2089.3616893291473, 436.7021179199219, 1998.8616878986359, 436.7021179199219 ],
                                    "source": [ "obj-109", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-145", 0 ],
                                    "order": 0,
                                    "source": [ "obj-110", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 0 ],
                                    "order": 1,
                                    "source": [ "obj-110", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-122", 0 ],
                                    "source": [ "obj-112", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-110", 0 ],
                                    "source": [ "obj-113", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-122", 1 ],
                                    "source": [ "obj-114", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-113", 0 ],
                                    "source": [ "obj-115", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-122", 2 ],
                                    "source": [ "obj-116", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-115", 0 ],
                                    "order": 1,
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-119", 0 ],
                                    "midpoints": [ 1798.8616893291473, 388.7021179199219, 1998.8616878986359, 388.7021179199219 ],
                                    "order": 0,
                                    "source": [ "obj-117", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-121", 1 ],
                                    "midpoints": [ 244.5, 541.0, 303.5, 541.0 ],
                                    "source": [ "obj-118", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-94", 0 ],
                                    "source": [ "obj-119", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-123", 1 ],
                                    "midpoints": [ 2040.8616878986359, 525.2021179199219, 2061.861687898636, 525.2021179199219 ],
                                    "source": [ "obj-120", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-123", 0 ],
                                    "source": [ "obj-120", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "midpoints": [ 284.5, 621.0, 49.5, 621.0 ],
                                    "source": [ "obj-121", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-128", 0 ],
                                    "source": [ "obj-122", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-149", 0 ],
                                    "order": 0,
                                    "source": [ "obj-123", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-62", 1 ],
                                    "midpoints": [ 1998.8616878986359, 575.2021179199219, 1813.8616893291473, 575.2021179199219 ],
                                    "order": 1,
                                    "source": [ "obj-123", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "midpoints": [ 379.5, 616.0, 49.5, 616.0 ],
                                    "source": [ "obj-125", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-129", 0 ],
                                    "source": [ "obj-128", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-130", 0 ],
                                    "source": [ "obj-129", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-82", 0 ],
                                    "hidden": 1,
                                    "midpoints": [ 1854.8616893291473, 1260.2021179199219, 1798.8616893291473, 1260.2021179199219 ],
                                    "source": [ "obj-13", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-133", 0 ],
                                    "source": [ "obj-130", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-135", 0 ],
                                    "source": [ "obj-133", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-127", 0 ],
                                    "midpoints": [ 49.5, 792.0, 30.0, 792.0, 30.0, 830.0, 49.5, 830.0 ],
                                    "source": [ "obj-134", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-146", 0 ],
                                    "source": [ "obj-136", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-105", 0 ],
                                    "source": [ "obj-137", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-127", 0 ],
                                    "source": [ "obj-138", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-108", 0 ],
                                    "source": [ "obj-139", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-141", 0 ],
                                    "source": [ "obj-140", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 1 ],
                                    "source": [ "obj-142", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-137", 1 ],
                                    "source": [ "obj-143", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-139", 1 ],
                                    "source": [ "obj-144", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-150", 0 ],
                                    "source": [ "obj-146", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-153", 0 ],
                                    "source": [ "obj-150", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-155", 0 ],
                                    "source": [ "obj-150", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-153", 1 ],
                                    "source": [ "obj-151", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-155", 2 ],
                                    "midpoints": [ 758.388864338398, 1119.0, 627.666664481163, 1119.0, 627.666664481163, 1299.0, 626.4268312454222, 1299.0 ],
                                    "source": [ "obj-151", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-154", 1 ],
                                    "source": [ "obj-152", 1 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-155", 3 ],
                                    "midpoints": [ 988.7592271566391, 1200.0, 1050.0, 1200.0, 1050.0, 1299.0, 667.8902468681334, 1299.0 ],
                                    "source": [ "obj-152", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-154", 0 ],
                                    "source": [ "obj-153", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-155", 1 ],
                                    "source": [ "obj-154", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-157", 0 ],
                                    "source": [ "obj-155", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-10", 0 ],
                                    "source": [ "obj-157", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-80", 0 ],
                                    "midpoints": [ 543.4869449734688, 174.28758600354195, 543.4869449734688, 174.28758600354195 ],
                                    "source": [ "obj-22", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-7", 0 ],
                                    "midpoints": [ 645.4477325081825, 177.28758600354195, 645.4477325081825, 177.28758600354195 ],
                                    "source": [ "obj-23", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-6", 0 ],
                                    "source": [ "obj-24", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-17", 0 ],
                                    "source": [ "obj-26", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-111", 0 ],
                                    "source": [ "obj-27", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-33", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-29", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-46", 1 ],
                                    "midpoints": [ 1884.8616893291473, 792.7021179199219, 1887.8616893291473, 792.7021179199219 ],
                                    "source": [ "obj-33", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-93", 0 ],
                                    "source": [ "obj-37", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-77", 0 ],
                                    "midpoints": [ 1798.8616893291473, 877.7021179199219, 1798.8616893291473, 877.7021179199219 ],
                                    "source": [ "obj-46", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "clean-record-stop", 0 ],
                                    "midpoints": [ 394.5, 134.76543200016022, 1254.0, 134.76543200016022, 1254.0, 134.56790399551392, 1798.8616893291473, 134.56790399551392 ],
                                    "order": 0,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-55", 0 ],
                                    "midpoints": [ 394.5, 134.0, 375.0, 134.0, 375.0, 200.0, 394.5, 200.0 ],
                                    "order": 1,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-8", 0 ],
                                    "order": 2,
                                    "source": [ "obj-6", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-67", 0 ],
                                    "source": [ "obj-62", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-118", 0 ],
                                    "source": [ "obj-68", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-99", 0 ],
                                    "source": [ "obj-7", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 0 ],
                                    "source": [ "obj-70", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-87", 0 ],
                                    "source": [ "obj-75", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-81", 0 ],
                                    "source": [ "obj-77", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-2", 0 ],
                                    "midpoints": [ 394.5, 193.5, 49.5, 193.5 ],
                                    "source": [ "obj-8", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-12", 0 ],
                                    "source": [ "obj-80", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-13", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-81", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-26", 0 ],
                                    "hidden": 1,
                                    "source": [ "obj-82", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-75", 3 ],
                                    "midpoints": [ 129.5, 489.5, 81.0, 489.5 ],
                                    "source": [ "obj-86", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-57", 0 ],
                                    "source": [ "obj-87", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-117", 0 ],
                                    "midpoints": [ 2109.8616893291473, 337.7021179199219, 1798.8616893291473, 337.7021179199219 ],
                                    "source": [ "obj-91", 3 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-91", 0 ],
                                    "source": [ "obj-93", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-100", 0 ],
                                    "midpoints": [ 2137.861687898636, 480.2021179199219, 2190.351048231125, 480.2021179199219 ],
                                    "source": [ "obj-94", 2 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-120", 0 ],
                                    "source": [ "obj-94", 0 ]
                                }
                            },
                            {
                                "patchline": {
                                    "destination": [ "obj-136", 0 ],
                                    "source": [ "obj-97", 0 ]
                                }
                            }
                        ]
                    },
                    "patching_rect": [ 335.0, 610.0, 150.0, 22.0 ],
                    "text": "p muburecord"
                }
            },
            {
                "box": {
                    "id": "obj-13",
                    "maxclass": "newobj",
                    "numinlets": 0,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750.0, 90.0, 87.0, 22.0 ],
                    "text": "r selected_az1"
                }
            },
            {
                "box": {
                    "id": "obj-19",
                    "lastchannelcount": 8,
                    "maxclass": "mc.live.gain~",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "multichannelsignal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 335.0, 732.9412070512772, 106.0, 132.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "mc.live.gain~[1]",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "mc.live.gain~[1]",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "mc.live.gain~[1]"
                }
            },
            {
                "box": {
                    "id": "obj-63",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 750.0, 135.0, 134.0, 22.0 ],
                    "text": "prepend /source/1/azim"
                }
            },
            {
                "box": {
                    "id": "obj-30",
                    "maxclass": "toggle",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 145.0, 550.0, 24.0, 24.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-27",
                    "maxclass": "newobj",
                    "numinlets": 3,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 145.0, 610.0, 60.0, 22.0 ],
                    "text": "record~ a"
                }
            },
            {
                "box": {
                    "attr": "edit_mode",
                    "id": "obj-25",
                    "maxclass": "attrui",
                    "numinlets": 1,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 120.0, 135.0, 228.14814066886902, 22.0 ]
                }
            },
            {
                "box": {
                    "fontname": "Arial",
                    "fontsize": 13.0,
                    "id": "obj-24",
                    "maxclass": "newobj",
                    "numinlets": 6,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 40.0, 330.0, 92.0, 23.0 ],
                    "text": "biquad~"
                }
            },
            {
                "box": {
                    "fontface": 0,
                    "id": "obj-23",
                    "maxclass": "filtergraph~",
                    "nfilters": 1,
                    "numinlets": 8,
                    "numoutlets": 7,
                    "outlettype": [ "list", "float", "float", "float", "float", "list", "int" ],
                    "parameter_enable": 0,
                    "patching_rect": [ 120.0, 173.0, 256.0, 128.0 ],
                    "setfilter": [ 0, 2, 1, 0, 0, 147.1717987060547, 1.0388779640197754, 0.9178906083106995, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-22",
                    "maxclass": "spectroscope~",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "" ],
                    "patching_rect": [ 233.0508530139923, 335.5932283401489, 332.0, 106.0 ]
                }
            },
            {
                "box": {
                    "id": "obj-21",
                    "maxclass": "newobj",
                    "numinlets": 2,
                    "numoutlets": 1,
                    "outlettype": [ "signal" ],
                    "patching_rect": [ 40.0, 550.0, 34.0, 22.0 ],
                    "text": "*~ 2."
                }
            },
            {
                "box": {
                    "id": "obj-9",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 335.0, 875.0, 134.0, 22.0 ],
                    "text": "mc.dac~ 1 2 3 4 5 6 7 8"
                }
            },
            {
                "box": {
                    "id": "obj-8",
                    "lastchannelcount": 0,
                    "maxclass": "live.gain~",
                    "numinlets": 2,
                    "numoutlets": 5,
                    "outlettype": [ "signal", "signal", "", "float", "list" ],
                    "parameter_enable": 1,
                    "patching_rect": [ 40.0, 380.0, 48.0, 136.0 ],
                    "saved_attribute_attributes": {
                        "valueof": {
                            "parameter_longname": "live.gain~",
                            "parameter_mmax": 6.0,
                            "parameter_mmin": -70.0,
                            "parameter_modmode": 3,
                            "parameter_shortname": "live.gain~",
                            "parameter_type": 0,
                            "parameter_unitstyle": 4
                        }
                    },
                    "varname": "live.gain~"
                }
            },
            {
                "box": {
                    "id": "obj-5",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 4,
                    "outlettype": [ "", "", "", "" ],
                    "patching_rect": [ 750.0, 285.0, 503.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.oper @internals 11 @initwith \"/source/number 11, /room/number 1, /speaker/number 8\""
                }
            },
            {
                "box": {
                    "id": "obj-3",
                    "maxclass": "newobj",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "multichannelsignal", "" ],
                    "patching_rect": [ 335.0, 697.286832511425, 241.0, 22.0 ],
                    "saved_object_attributes": {
                        "parameter_enable": 0
                    },
                    "text": "spat5.spat~ @inputs 11 @outputs 8 @mc 1"
                }
            },
            {
                "box": {
                    "id": "obj-2",
                    "maxclass": "ezadc~",
                    "numinlets": 1,
                    "numoutlets": 2,
                    "outlettype": [ "signal", "signal" ],
                    "patching_rect": [ 40.0, 135.0, 45.0, 45.0 ]
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "clean-label-1",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 38.91666778922081, 15.0, 94.16666442155838, 24.0 ],
                    "text": "身体トラッキング"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "clean-label-2",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 335.0, 15.0, 220.0, 24.0 ],
                    "text": "タブレット OSC"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "clean-label-3",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 40.0, 105.0, 220.0, 24.0 ],
                    "text": "マイク入力・フィルター"
                }
            },
            {
                "box": {
                    "fontsize": 13.0,
                    "id": "clean-label-4",
                    "maxclass": "comment",
                    "numinlets": 1,
                    "numoutlets": 0,
                    "patching_rect": [ 750.0, 55.0, 220.0, 24.0 ],
                    "text": "空間音響  /  8ch"
                }
            }
        ],
        "lines": [
            {
                "patchline": {
                    "destination": [ "obj-12", 0 ],
                    "source": [ "obj-11", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 1058.1630709767342, 270.0, 759.5, 270.0 ],
                    "source": [ "obj-12", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-63", 0 ],
                    "source": [ "obj-13", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 2 ],
                    "midpoints": [ 445.5, 77.0, 722.0, 77.0, 722.0, 600.0, 475.5, 600.0 ],
                    "source": [ "obj-17", 1 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 1 ],
                    "midpoints": [ 344.5, 77.0, 30.0, 77.0, 30.0, 600.0, 410.0, 600.0 ],
                    "source": [ "obj-17", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-16", 0 ],
                    "source": [ "obj-18", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-9", 0 ],
                    "source": [ "obj-19", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "source": [ "obj-2", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "midpoints": [ 49.5, 591.0, 154.5, 591.0 ],
                    "order": 1,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-41", 0 ],
                    "midpoints": [ 49.5, 583.0, 344.5, 583.0 ],
                    "order": 0,
                    "source": [ "obj-21", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-24", 0 ],
                    "midpoints": [ 129.5, 315.5, 49.5, 315.5 ],
                    "source": [ "obj-23", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-22", 0 ],
                    "midpoints": [ 49.5, 363.0, 215.0, 363.0, 215.0, 320.0, 242.5508530139923, 320.0 ],
                    "order": 0,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-8", 0 ],
                    "order": 1,
                    "source": [ "obj-24", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-23", 0 ],
                    "source": [ "obj-25", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 1390.3035582602024, 270.0, 759.5, 270.0 ],
                    "source": [ "obj-26", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-19", 0 ],
                    "source": [ "obj-3", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-27", 0 ],
                    "source": [ "obj-30", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-6", 0 ],
                    "source": [ "obj-4", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-14", 0 ],
                    "order": 1,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "order": 0,
                    "source": [ "obj-41", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 1217.5213550925255, 269.5, 759.5, 269.5 ],
                    "source": [ "obj-49", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-3", 0 ],
                    "midpoints": [ 759.5, 671.0698464512825, 344.5, 671.0698464512825 ],
                    "source": [ "obj-5", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-26", 0 ],
                    "order": 0,
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-49", 0 ],
                    "order": 1,
                    "source": [ "obj-52", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 759.5, 221.0, 759.5, 221.0 ],
                    "source": [ "obj-58", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "midpoints": [ 906.8261770009995, 270.0, 759.5, 270.0 ],
                    "source": [ "obj-6", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-5", 0 ],
                    "source": [ "obj-63", 0 ]
                }
            },
            {
                "patchline": {
                    "destination": [ "obj-21", 0 ],
                    "source": [ "obj-8", 0 ]
                }
            }
        ],
        "parameters": {
            "obj-14": [ "mc.live.gain~[5]", "mc.live.gain~[5]", 0 ],
            "obj-19": [ "mc.live.gain~[1]", "mc.live.gain~[1]", 0 ],
            "obj-41::obj-105": [ "mc.live.gain~[2]", "mc.live.gain~", 0 ],
            "obj-41::obj-108": [ "mc.live.gain~[3]", "mc.live.gain~", 0 ],
            "obj-41::obj-141": [ "live.gain~[3]", "live.gain~[3]", 0 ],
            "obj-41::obj-146": [ "mc.live.gain~", "mc.live.gain~", 0 ],
            "obj-41::obj-157": [ "mc.live.gain~[4]", "mc.live.gain~[4]", 0 ],
            "obj-8": [ "live.gain~", "live.gain~", 0 ],
            "parameterbanks": {
                "0": {
                    "index": 0,
                    "name": "",
                    "parameters": [ "-", "-", "-", "-", "-", "-", "-", "-" ],
                    "buttons": [ "-", "-", "-", "-", "-", "-", "-", "-" ]
                }
            },
            "inherited_shortname": 1
        },
        "autosave": 0
    }
}