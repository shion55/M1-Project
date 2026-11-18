{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 9,
			"minor" : 0,
			"revision" : 8,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 34.0, 77.0, 1852.0, 921.0 ],
		"gridsize" : [ 15.0, 15.0 ],
		"boxes" : [ 			{
				"box" : 				{
					"id" : "obj-18",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 795.121970176696777, 361.463423252105713, 77.0, 22.0 ],
					"text" : "loadmess 50"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 795.121970176696777, 426.829278469085693, 60.0, 22.0 ],
					"text" : "s upoffset"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1048.663070976734161, 89.545455873012543, 87.0, 22.0 ],
					"text" : "r selected_az3"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-12",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1048.663070976734161, 135.0, 140.0, 22.0 ],
					"text" : "prepend /source/11/azim"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-4",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 897.326177000999451, 89.545455873012543, 87.0, 22.0 ],
					"text" : "r selected_az2"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-6",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 897.326177000999451, 135.0, 141.0, 22.0 ],
					"text" : "prepend /source/10/azim"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-1",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 0,
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 59.0, 107.0, 1000.0, 780.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"id" : "obj-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 243.703695714473724, 763.934664845466614, 45.92592442035675, 34.0 ],
									"text" : "ID\n"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.407399296760559, 537.673219978809357, 45.92592442035675, 34.0 ],
									"text" : "ID\n"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.407399296760559, 324.06536990404129, 45.92592442035675, 34.0 ],
									"text" : "ID\n"
								}

							}
, 							{
								"box" : 								{
									"id" : "js",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 52.941178143024445, 115.686278164386749, 156.0, 22.0 ],
									"saved_object_attributes" : 									{
										"filename" : "v13_arms_step1.js",
										"parameter_enable" : 0
									}
,
									"text" : "js v13_arms_step1.js"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "label0",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.712426126003265, 158.823534429073334, 160.0, 25.0 ],
									"text" : "人物 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "route0",
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 247.712426126003265, 192.810463607311249, 929.0, 22.0 ],
									"text" : "route id active Raz Rup Laz Lup RazValid RupValid LazValid LupValid"
								}

							}
, 							{
								"box" : 								{
									"id" : "n0_0",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 247.712426126003265, 284.967329263687134, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "n0_1",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 338.562102198600769, 284.967329263687134, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s0_1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 338.562102198600769, 330.06536990404129, 86.0, 22.0 ],
									"text" : "s bodyactive1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n0_2",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 430.065373063087463, 284.967329263687134, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "az0_2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 80.0, 100.0, 280.0, 220.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "in",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 25.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "plus",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 35.0, 75.0, 55.0, 22.0 ],
													"text" : "+ 45."
												}

											}
, 											{
												"box" : 												{
													"id" : "wrap",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 120.0, 220.0, 22.0 ],
													"text" : "expr fmod(720. - $f1\\, 360.)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "out",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 35.0, 165.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "plus", 0 ],
													"source" : [ "in", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "wrap", 0 ],
													"source" : [ "plus", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "out", 0 ],
													"source" : [ "wrap", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 430.065373063087463, 237.908504247665405, 78.0, 22.0 ],
									"text" : "p azimuth"
								}

							}
, 							{
								"box" : 								{
									"id" : "s0_2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 430.065373063087463, 330.06536990404129, 86.0, 22.0 ],
									"text" : "s Raz1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n0_3",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 520.915049135684967, 284.967329263687134, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s0_3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 520.915049135684967, 330.06536990404129, 86.0, 22.0 ],
									"text" : "s Rup1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n0_4",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 611.764725208282471, 284.967329263687134, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "az0_4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 80.0, 100.0, 280.0, 220.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "in",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 25.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "plus",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 35.0, 75.0, 55.0, 22.0 ],
													"text" : "+ 45."
												}

											}
, 											{
												"box" : 												{
													"id" : "wrap",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 120.0, 220.0, 22.0 ],
													"text" : "expr fmod(720. - $f1\\, 360.)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "out",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 35.0, 165.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "plus", 0 ],
													"source" : [ "in", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "wrap", 0 ],
													"source" : [ "plus", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "out", 0 ],
													"source" : [ "wrap", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 611.764725208282471, 237.908504247665405, 78.0, 22.0 ],
									"text" : "p azimuth"
								}

							}
, 							{
								"box" : 								{
									"id" : "s0_4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 611.764725208282471, 330.06536990404129, 86.0, 22.0 ],
									"text" : "s Laz1"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n0_5",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 702.614401280879974, 284.967329263687134, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s0_5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 702.614401280879974, 330.06536990404129, 86.0, 22.0 ],
									"text" : "s Lup1"
								}

							}
, 							{
								"box" : 								{
									"id" : "n0_6",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 794.117672145366669, 284.967329263687134, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s0_6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 794.117672145366669, 330.06536990404129, 86.0, 22.0 ],
									"text" : "s RazValid1"
								}

							}
, 							{
								"box" : 								{
									"id" : "n0_7",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 884.967348217964172, 284.967329263687134, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s0_7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 884.967348217964172, 330.06536990404129, 86.0, 22.0 ],
									"text" : "s RupValid1"
								}

							}
, 							{
								"box" : 								{
									"id" : "n0_8",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 975.817024290561676, 284.967329263687134, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s0_8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 975.817024290561676, 330.06536990404129, 86.0, 22.0 ],
									"text" : "s LazValid1"
								}

							}
, 							{
								"box" : 								{
									"id" : "n0_9",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1066.66670036315918, 284.967329263687134, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s0_9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1066.66670036315918, 330.06536990404129, 86.0, 22.0 ],
									"text" : "s LupValid1"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "label1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.712426126003265, 379.084979295730591, 160.0, 25.0 ],
									"text" : "人物 2"
								}

							}
, 							{
								"box" : 								{
									"id" : "route1",
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 247.712426126003265, 413.071908473968506, 929.0, 22.0 ],
									"text" : "route id active Raz Rup Laz Lup RazValid RupValid LazValid LupValid"
								}

							}
, 							{
								"box" : 								{
									"id" : "n1_0",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 247.712426126003265, 505.228774130344391, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "n1_1",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 338.562102198600769, 505.228774130344391, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s1_1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 338.562102198600769, 549.673219978809357, 86.0, 22.0 ],
									"text" : "s bodyactive2"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n1_2",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 430.065373063087463, 505.228774130344391, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "az1_2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 80.0, 100.0, 280.0, 220.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "in",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 25.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "plus",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 35.0, 75.0, 55.0, 22.0 ],
													"text" : "+ 45."
												}

											}
, 											{
												"box" : 												{
													"id" : "wrap",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 120.0, 220.0, 22.0 ],
													"text" : "expr fmod(720. - $f1\\, 360.)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "out",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 35.0, 165.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "plus", 0 ],
													"source" : [ "in", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "wrap", 0 ],
													"source" : [ "plus", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "out", 0 ],
													"source" : [ "wrap", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 430.065373063087463, 458.169949114322662, 78.0, 22.0 ],
									"text" : "p azimuth"
								}

							}
, 							{
								"box" : 								{
									"id" : "s1_2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 430.065373063087463, 549.673219978809357, 86.0, 22.0 ],
									"text" : "s Raz2"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n1_3",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 520.915049135684967, 505.228774130344391, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s1_3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 520.915049135684967, 549.673219978809357, 86.0, 22.0 ],
									"text" : "s Rup2"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n1_4",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 611.764725208282471, 505.228774130344391, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "az1_4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 80.0, 100.0, 280.0, 220.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "in",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 25.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "plus",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 35.0, 75.0, 55.0, 22.0 ],
													"text" : "+ 45."
												}

											}
, 											{
												"box" : 												{
													"id" : "wrap",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 120.0, 220.0, 22.0 ],
													"text" : "expr fmod(720. - $f1\\, 360.)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "out",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 35.0, 165.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "plus", 0 ],
													"source" : [ "in", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "wrap", 0 ],
													"source" : [ "plus", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "out", 0 ],
													"source" : [ "wrap", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 611.764725208282471, 458.169949114322662, 78.0, 22.0 ],
									"text" : "p azimuth"
								}

							}
, 							{
								"box" : 								{
									"id" : "s1_4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 611.764725208282471, 549.673219978809357, 86.0, 22.0 ],
									"text" : "s Laz2"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n1_5",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 702.614401280879974, 505.228774130344391, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s1_5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 702.614401280879974, 549.673219978809357, 86.0, 22.0 ],
									"text" : "s Lup2"
								}

							}
, 							{
								"box" : 								{
									"id" : "n1_6",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 794.117672145366669, 505.228774130344391, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s1_6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 794.117672145366669, 549.673219978809357, 86.0, 22.0 ],
									"text" : "s RazValid2"
								}

							}
, 							{
								"box" : 								{
									"id" : "n1_7",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 884.967348217964172, 505.228774130344391, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s1_7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 884.967348217964172, 549.673219978809357, 86.0, 22.0 ],
									"text" : "s RupValid2"
								}

							}
, 							{
								"box" : 								{
									"id" : "n1_8",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 975.817024290561676, 505.228774130344391, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s1_8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 975.817024290561676, 549.673219978809357, 86.0, 22.0 ],
									"text" : "s LazValid2"
								}

							}
, 							{
								"box" : 								{
									"id" : "n1_9",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1066.66670036315918, 505.228774130344391, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s1_9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1066.66670036315918, 549.673219978809357, 86.0, 22.0 ],
									"text" : "s LupValid2"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 14.0,
									"id" : "label2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 247.712426126003265, 598.692829370498657, 160.0, 25.0 ],
									"text" : "人物 3"
								}

							}
, 							{
								"box" : 								{
									"id" : "route2",
									"maxclass" : "newobj",
									"numinlets" : 11,
									"numoutlets" : 11,
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "", "" ],
									"patching_rect" : [ 247.712426126003265, 632.679758548736572, 929.0, 22.0 ],
									"text" : "route id active Raz Rup Laz Lup RazValid RupValid LazValid LupValid"
								}

							}
, 							{
								"box" : 								{
									"id" : "n2_0",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 247.712426126003265, 724.836624205112457, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "n2_1",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 338.562102198600769, 724.836624205112457, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s2_1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 338.562102198600769, 769.934664845466614, 86.0, 22.0 ],
									"text" : "s bodyactive3"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n2_2",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 430.065373063087463, 724.836624205112457, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "az2_2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 80.0, 100.0, 280.0, 220.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "in",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 25.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "plus",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 35.0, 75.0, 55.0, 22.0 ],
													"text" : "+ 45."
												}

											}
, 											{
												"box" : 												{
													"id" : "wrap",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 120.0, 220.0, 22.0 ],
													"text" : "expr fmod(720. - $f1\\, 360.)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "out",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 35.0, 165.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "plus", 0 ],
													"source" : [ "in", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "wrap", 0 ],
													"source" : [ "plus", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "out", 0 ],
													"source" : [ "wrap", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 430.065373063087463, 677.777799189090729, 78.0, 22.0 ],
									"text" : "p azimuth"
								}

							}
, 							{
								"box" : 								{
									"id" : "s2_2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 430.065373063087463, 769.934664845466614, 86.0, 22.0 ],
									"text" : "s Raz3"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n2_3",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 520.915049135684967, 724.836624205112457, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s2_3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 520.915049135684967, 769.934664845466614, 86.0, 22.0 ],
									"text" : "s Rup3"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n2_4",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 611.764725208282471, 724.836624205112457, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "az2_4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 80.0, 100.0, 280.0, 220.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"comment" : "",
													"id" : "in",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 25.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "plus",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 35.0, 75.0, 55.0, 22.0 ],
													"text" : "+ 45."
												}

											}
, 											{
												"box" : 												{
													"id" : "wrap",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 35.0, 120.0, 220.0, 22.0 ],
													"text" : "expr fmod(720. - $f1\\, 360.)"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "out",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 35.0, 165.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "plus", 0 ],
													"source" : [ "in", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "wrap", 0 ],
													"source" : [ "plus", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "out", 0 ],
													"source" : [ "wrap", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 611.764725208282471, 677.777799189090729, 78.0, 22.0 ],
									"text" : "p azimuth"
								}

							}
, 							{
								"box" : 								{
									"id" : "s2_4",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 611.764725208282471, 769.934664845466614, 86.0, 22.0 ],
									"text" : "s Laz3"
								}

							}
, 							{
								"box" : 								{
									"format" : 6,
									"id" : "n2_5",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 702.614401280879974, 724.836624205112457, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s2_5",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 702.614401280879974, 769.934664845466614, 86.0, 22.0 ],
									"text" : "s Lup3"
								}

							}
, 							{
								"box" : 								{
									"id" : "n2_6",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 794.117672145366669, 724.836624205112457, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s2_6",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 794.117672145366669, 769.934664845466614, 86.0, 22.0 ],
									"text" : "s RazValid3"
								}

							}
, 							{
								"box" : 								{
									"id" : "n2_7",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 884.967348217964172, 724.836624205112457, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s2_7",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 884.967348217964172, 769.934664845466614, 86.0, 22.0 ],
									"text" : "s RupValid3"
								}

							}
, 							{
								"box" : 								{
									"id" : "n2_8",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 975.817024290561676, 724.836624205112457, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s2_8",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 975.817024290561676, 769.934664845466614, 86.0, 22.0 ],
									"text" : "s LazValid3"
								}

							}
, 							{
								"box" : 								{
									"id" : "n2_9",
									"maxclass" : "number",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1066.66670036315918, 724.836624205112457, 77.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "s2_9",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1066.66670036315918, 769.934664845466614, 86.0, 22.0 ],
									"text" : "s LupValid3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 53.0, 65.0, 97.0, 22.0 ],
									"text" : "udpreceive 9010"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "n0_2", 0 ],
									"source" : [ "az0_2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n0_4", 0 ],
									"source" : [ "az0_4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n1_2", 0 ],
									"source" : [ "az1_2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n1_4", 0 ],
									"source" : [ "az1_4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n2_2", 0 ],
									"source" : [ "az2_2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n2_4", 0 ],
									"source" : [ "az2_4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "route0", 0 ],
									"midpoints" : [ 62.441178143024445, 148.934664845466614, 64.66670036315918, 148.934664845466614, 64.66670036315918, 184.934664845466614, 257.212426126003265, 184.934664845466614 ],
									"source" : [ "js", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s0_1", 0 ],
									"source" : [ "n0_1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s0_2", 0 ],
									"source" : [ "n0_2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s0_3", 0 ],
									"source" : [ "n0_3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s0_4", 0 ],
									"source" : [ "n0_4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s0_5", 0 ],
									"source" : [ "n0_5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s0_6", 0 ],
									"source" : [ "n0_6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s0_7", 0 ],
									"source" : [ "n0_7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s0_8", 0 ],
									"source" : [ "n0_8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s0_9", 0 ],
									"source" : [ "n0_9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s1_1", 0 ],
									"source" : [ "n1_1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s1_2", 0 ],
									"source" : [ "n1_2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s1_3", 0 ],
									"source" : [ "n1_3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s1_4", 0 ],
									"source" : [ "n1_4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s1_5", 0 ],
									"source" : [ "n1_5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s1_6", 0 ],
									"source" : [ "n1_6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s1_7", 0 ],
									"source" : [ "n1_7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s1_8", 0 ],
									"source" : [ "n1_8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s1_9", 0 ],
									"source" : [ "n1_9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s2_1", 0 ],
									"source" : [ "n2_1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s2_2", 0 ],
									"source" : [ "n2_2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s2_3", 0 ],
									"source" : [ "n2_3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s2_4", 0 ],
									"source" : [ "n2_4", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s2_5", 0 ],
									"source" : [ "n2_5", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s2_6", 0 ],
									"source" : [ "n2_6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s2_7", 0 ],
									"source" : [ "n2_7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s2_8", 0 ],
									"source" : [ "n2_8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "s2_9", 0 ],
									"source" : [ "n2_9", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "js", 0 ],
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "az0_2", 0 ],
									"source" : [ "route0", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "az0_4", 0 ],
									"source" : [ "route0", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n0_0", 0 ],
									"source" : [ "route0", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n0_1", 0 ],
									"source" : [ "route0", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n0_3", 0 ],
									"source" : [ "route0", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n0_5", 0 ],
									"source" : [ "route0", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n0_6", 0 ],
									"source" : [ "route0", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n0_7", 0 ],
									"source" : [ "route0", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n0_8", 0 ],
									"source" : [ "route0", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n0_9", 0 ],
									"source" : [ "route0", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "az1_2", 0 ],
									"source" : [ "route1", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "az1_4", 0 ],
									"source" : [ "route1", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n1_0", 0 ],
									"source" : [ "route1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n1_1", 0 ],
									"source" : [ "route1", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n1_3", 0 ],
									"source" : [ "route1", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n1_5", 0 ],
									"source" : [ "route1", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n1_6", 0 ],
									"source" : [ "route1", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n1_7", 0 ],
									"source" : [ "route1", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n1_8", 0 ],
									"source" : [ "route1", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n1_9", 0 ],
									"source" : [ "route1", 9 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "az2_2", 0 ],
									"source" : [ "route2", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "az2_4", 0 ],
									"source" : [ "route2", 4 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n2_0", 0 ],
									"source" : [ "route2", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n2_1", 0 ],
									"source" : [ "route2", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n2_3", 0 ],
									"source" : [ "route2", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n2_5", 0 ],
									"source" : [ "route2", 5 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n2_6", 0 ],
									"source" : [ "route2", 6 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n2_7", 0 ],
									"source" : [ "route2", 7 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n2_8", 0 ],
									"source" : [ "route2", 8 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "n2_9", 0 ],
									"source" : [ "route2", 9 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 37.5, 40.416665703058243, 97.0, 22.0 ],
					"text" : "p oscfrompython"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 80.0, 100.0, 440.0, 260.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"boxes" : [ 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-4",
									"index" : 2,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 180.0, 160.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-7",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 180.0, 105.0, 101.0, 22.0 ],
									"text" : "route /experience"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-6",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 160.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 105.0, 77.0, 22.0 ],
									"text" : "route /record"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 35.0, 97.0, 22.0 ],
									"text" : "udpreceive 9000"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-3", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 49.5, 81.0, 189.5, 81.0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-3", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-4", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 335.0, 45.0, 120.0, 22.0 ],
					"text" : "p oscfromtablet"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-52",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "bang" ],
					"patching_rect" : [ 1208.021355092525482, 90.080215215682983, 58.0, 22.0 ],
					"text" : "loadbang"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-49",
					"linecount" : 8,
					"maxclass" : "message",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 1208.021355092525482, 135.0, 155.0, 119.0 ],
					"text" : "/source/2/azim 0, /source/3/azim 45, /source/4/azim 90, /source/5/azim 135, /source/6/azim 180, /source/7/azim 225, /source/8/azim 270, /source/9/azim 315"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-58",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.0, 2.139037370681763, 175.0, 22.0 ],
					"text" : "loadmess /source/*/aperture 10"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-41",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "multichannelsignal" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 9,
							"minor" : 0,
							"revision" : 8,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "box",
						"rect" : [ 134.0, 134.0, 1590.0, 921.0 ],
						"gridsize" : [ 15.0, 15.0 ],
						"visible" : 1,
						"boxes" : [ 							{
								"box" : 								{
									"channels" : 11,
									"id" : "obj-157",
									"lastchannelcount" : 11,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 533.898280262947083, 1371.186376929283142, 209.0, 134.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "mc.live.gain~[4]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "mc.live.gain~[4]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "mc.live.gain~[3]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-155",
									"linecount" : 2,
									"maxclass" : "newobj",
									"numinlets" : 4,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 534.146354198455811, 1314.379126489162445, 143.390246868133431, 36.0 ],
									"text" : "mc.combine~ 4 @chans 11"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-154",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 575.609769821166992, 1215.032718122005463, 464.149457335472107, 22.0 ],
									"text" : "mc.+~ @chans 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-153",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 575.609769821166992, 1134.64055871963501, 233.779094517230988, 22.0 ],
									"text" : "mc.+~ @chans 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-152",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
									"patching_rect" : [ 979.259227156639099, 1068.627484738826752, 102.0, 22.0 ],
									"text" : "mc.separate~ 1 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-151",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
									"patching_rect" : [ 748.88886433839798, 1065.196144461631775, 102.0, 22.0 ],
									"text" : "mc.separate~ 1 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-150",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "multichannelsignal", "multichannelsignal", "multichannelsignal" ],
									"patching_rect" : [ 534.074056565761566, 1065.196144461631775, 102.0, 22.0 ],
									"text" : "mc.separate~ 1 8"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-149",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1989.361687898635864, 636.170208215713501, 59.0, 22.0 ],
									"text" : "s endPos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-145",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1885.361689329147339, 636.170208215713501, 62.0, 22.0 ],
									"text" : "s startPos"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-144",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 1067.99555230140686, 715.503887057304382, 84.0, 22.0 ],
									"text" : "r~ gain_adjust"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-143",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 838.399132013320923, 726.0, 84.0, 22.0 ],
									"text" : "r~ gain_adjust"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-142",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 623.600918501615524, 726.0, 84.0, 22.0 ],
									"text" : "r~ gain_adjust"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-139",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 978.475369274616241, 777.130071014165878, 108.520183026790619, 22.0 ],
									"text" : "mc.*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-137",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 748.878948986530304, 778.026932030916214, 108.520183026790619, 22.0 ],
									"text" : "mc.*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-136",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patching_rect" : [ 534.080735474824905, 777.130071014165878, 108.520183026790619, 22.0 ],
									"text" : "mc.*~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-135",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1281.395368695259094, 901.48145192861557, 86.0, 22.0 ],
									"text" : "s~ gain_adjust"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-133",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "bang" ],
									"patching_rect" : [ 1281.395368695259094, 855.038772940635681, 34.0, 22.0 ],
									"text" : "line~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-130",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1281.395368695259094, 812.790710270404816, 71.0, 22.0 ],
									"text" : "pack 0. 300"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-129",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1281.395368695259094, 771.705438315868378, 133.0, 22.0 ],
									"text" : "expr 1./sqrt(max(1\\,$i1))"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-128",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1281.395368695259094, 715.503887057304382, 111.0, 22.0 ],
									"text" : "expr $i1 + $i2 + $i3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-126",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1281.481583833694458, 572.868225932121277, 150.0, 22.0 ],
									"text" : "音量適正化"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-122",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1281.395368695259094, 665.185163378715515, 201.888494253158569, 22.0 ],
									"text" : "pak 0 0 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-116",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1464.283862948417664, 613.580295920372009, 61.0, 22.0 ],
									"text" : "r playing3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-114",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1372.839615821838379, 613.580295920372009, 61.0, 22.0 ],
									"text" : "r playing2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-112",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1281.481583833694458, 613.580295920372009, 61.0, 22.0 ],
									"text" : "r playing1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-111",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 775.862109661102295, 246.405236542224884, 77.0, 22.0 ],
									"text" : "s experience"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-106",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 107.0, 1000.0, 780.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"visible" : 1,
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 256.097567081451416, 206.097565889358521, 97.0, 22.0 ],
													"text" : "prepend position"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 480.487816333770752, 848.780508041381836, 118.0, 22.0 ],
													"text" : "prepend outputgains"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 784.146360158920288, 581.707330942153931, 133.0, 22.0 ],
													"text" : "random @range -12 12"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 587.804892063140869, 425.609766244888306, 215.0, 22.0 ],
													"text" : "t b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-149",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 489.285695552825928, 118.487387895584106, 57.0, 22.0 ],
													"text" : "r endPos"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-145",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 431.302505731582642, 118.487387895584106, 60.0, 22.0 ],
													"text" : "r startPos"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.352936267852783, 171.428561210632324, 308.403342962265015, 22.0 ],
													"text" : "scale 0. 360. 0. 1200."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.352936267852783, 118.487387895584106, 87.0, 22.0 ],
													"text" : "r selected_az3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 727.0, 54.0, 87.0, 22.0 ],
													"text" : "r selected_up3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.027978658676147, 27.0, 75.0, 22.0 ],
													"text" : "r experience"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 727.0, 116.0, 103.0, 22.0 ],
													"text" : "scale 0. 90. 0. 60."
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-102",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 727.0, 156.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-98",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 707.0, 192.0, 40.0, 22.0 ],
													"text" : "* 100."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-89",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 707.0, 231.0, 84.0, 22.0 ],
													"text" : "resampling $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 591.911753416061401, 233.510636627674103, 87.0, 22.0 ],
													"text" : "r granu_period"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 493.382343530654907, 233.510636627674103, 71.0, 22.0 ],
													"text" : "r granu_dur"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-10",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 68.382351636886597, 657.352928638458252, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-72",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 100.645625114440918, 139.392991364002228, 29.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-71",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 69.027978658676147, 138.657697260379791, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 100.645625114440918, 111.45181542634964, 34.0, 22.0 ],
													"text" : "sel 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 69.027978658676147, 78.363580763339996, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 68.292684555053711, 178.363578855991364, 107.462682723999023, 22.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 157.26327109336853, 84.981227695941925, 61.0, 22.0 ],
													"text" : "r playing3"
												}

											}
, 											{
												"box" : 												{
													"attr" : "play",
													"id" : "obj-39",
													"maxclass" : "attrui",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 68.292684555053711, 233.510636627674103, 136.51452448964119, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.352936267852783, 233.510636627674103, 59.0, 22.0 ],
													"text" : "r granpos"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 480.487816333770752, 502.43903636932373, 29.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 479.268304109573364, 463.414645195007324, 79.0, 22.0 ],
													"text" : "r bothhands3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 479.268304109573364, 541.463427543640137, 129.106382191181183, 22.0 ],
													"text" : "gate 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 479.268304109573364, 814.63416576385498, 60.0, 22.0 ],
													"text" : "zl.change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 479.268304109573364, 717.073187828063965, 95.0, 22.0 ],
													"text" : "1 0 0 0 0 0 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-76",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 589.024404287338257, 671.95123553276062, 95.0, 22.0 ],
													"text" : "1 2 3 4 5 6 7 8 9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 589.024404287338257, 624.3902587890625, 180.748657822608948, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 589.024404287338257, 717.073187828063965, 181.0, 22.0 ],
													"text" : "vexpr $i1 == $i2 @scalarmode 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 589.024404287338257, 590.243916511535645, 115.0, 22.0 ],
													"text" : "random @range 2 9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-114",
													"maxclass" : "newobj",
													"numinlets" : 9,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 68.148145914077759, 434.14635181427002, 445.934086905585445, 22.0 ],
													"text" : "mc.pack~ 9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 10,
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
													"patching_rect" : [ 68.292684555053711, 321.951227188110352, 498.0, 22.0 ],
													"saved_object_attributes" : 													{
														"resampleaudioinput" : 0,
														"verbose" : 1
													}
,
													"text" : "mubu.granular~ 9 voiceDB @audio audio @play 0 @outputposition 1 @duplicatechannels 1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 265.597567081451416, 219.0, 263.712419807910919, 219.0, 263.712419807910919, 306.0, 77.792684555053711, 306.0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 1 ],
													"midpoints" : [ 736.5, 182.0, 737.5, 182.0 ],
													"source" : [ "obj-102", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-102", 0 ],
													"source" : [ "obj-104", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-114", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 502.882343530654907, 306.0, 77.792684555053711, 306.0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 601.411753416061401, 306.0, 77.792684555053711, 306.0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 3 ],
													"source" : [ "obj-145", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 4 ],
													"source" : [ "obj-149", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 1 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 8 ],
													"source" : [ "obj-19", 8 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 7 ],
													"source" : [ "obj-19", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 6 ],
													"source" : [ "obj-19", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 5 ],
													"source" : [ "obj-19", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 4 ],
													"source" : [ "obj-19", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 3 ],
													"source" : [ "obj-19", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 2 ],
													"source" : [ "obj-19", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 1 ],
													"source" : [ "obj-19", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-19", 9 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 266.852936267852783, 306.0, 77.792684555053711, 306.0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"source" : [ "obj-21", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 489.987816333770752, 873.536604166030884, 52.512215852737427, 873.536604166030884, 52.512215852737427, 317.536604642868042, 77.792684555053711, 317.536604642868042 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"midpoints" : [ 598.524404287338257, 800.670069932937622, 488.768304109573364, 800.670069932937622 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 1 ],
													"source" : [ "obj-61", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"order" : 0,
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"order" : 1,
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"source" : [ "obj-66", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"source" : [ "obj-7", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 716.5, 306.0, 77.792684555053711, 306.0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"midpoints" : [ 793.646360158920288, 600.0, 948.804872989654541, 600.0, 948.804872989654541, 453.0, 948.121945142745972, 453.0, 948.121945142745972, 189.0, 716.5, 189.0 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-98", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 979.259227156639099, 665.185163378715515, 109.0, 22.0 ],
									"text" : "p player3_granular"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-107",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 107.0, 1000.0, 780.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 509.8684161901474, 398.830392003059387, 29.5, 22.0 ],
													"text" : "> 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.894734382629395, 61.184209942817688, 58.0, 22.0 ],
													"text" : "r upoffset"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 353.947365045547485, 470.394732356071472, 89.0, 22.0 ],
													"text" : "s selected_up3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 467.763153433799744, 367.76315438747406, 43.0, 22.0 ],
													"text" : "r Lup3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 353.947365045547485, 424.342101216316223, 132.89473557472229, 22.0 ],
													"text" : "switch 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.526311874389648, 367.76315438747406, 45.0, 22.0 ],
													"text" : "r Rup3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 609.356698632240295, 437.646195769309998, 33.0, 22.0 ],
													"text" : "== 3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 509.8684161901474, 437.499995827674866, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 509.8684161901474, 470.394732356071472, 63.0, 22.0 ],
													"text" : "s playing3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 609.356698632240295, 470.394732356071472, 81.0, 22.0 ],
													"text" : "s bothhands3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 107.406400978565216, 308.192539632320404, 100.827454626560211, 22.0 ],
													"text" : "sel 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 188.157892942428589, 470.394732356071472, 89.0, 22.0 ],
													"text" : "s selected_az3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 302.052628517150879, 367.76315438747406, 42.0, 22.0 ],
													"text" : "r Laz3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 188.157892942428589, 424.342101216316223, 132.89473557472229, 22.0 ],
													"text" : "switch 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 50.0, 242.192539632320404, 66.470591008663177, 64.0 ],
													"text" : "0 両方下げ\n1 右上げ\n2 左上げ\n3 両方上げ"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 245.105260729789734, 367.76315438747406, 44.0, 22.0 ],
													"text" : "r Raz3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 107.406400978565216, 258.074893236160278, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 107.406400978565216, 212.299461960792542, 100.0, 22.0 ],
													"text" : "expr $f1 + $f2 * 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 107.406400978565216, 182.352938771247864, 90.219513893127441, 22.0 ],
													"text" : "pak 0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 178.529393553733826, 145.989303469657898, 43.0, 22.0 ],
													"text" : ">= 30."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 107.236841082572937, 145.989303469657898, 48.169559895992279, 22.0 ],
													"text" : ">= 30."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-156",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 107.236841082572937, 61.184209942817688, 45.0, 22.0 ],
													"text" : "r Rup3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 178.529393553733826, 61.184209942817688, 43.0, 22.0 ],
													"text" : "r Lup3"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"midpoints" : [ 198.733855605125427, 411.0, 363.447365045547485, 411.0 ],
													"order" : 0,
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-156", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 2 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 1 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"midpoints" : [ 267.394734382629395, 132.0, 145.906400978565216, 132.0 ],
													"order" : 1,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 1 ],
													"midpoints" : [ 267.394734382629395, 132.0, 212.029393553733826, 132.0 ],
													"order" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 2,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"midpoints" : [ 116.906400978565216, 282.0, 126.0, 282.0, 126.0, 294.0, 522.0, 294.0, 522.0, 393.0, 519.3684161901474, 393.0 ],
													"order" : 1,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"midpoints" : [ 116.906400978565216, 282.0, 126.0, 282.0, 126.0, 294.0, 618.856698632240295, 294.0 ],
													"order" : 0,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 2 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 979.259227156639099, 565.185166656970978, 99.0, 22.0 ],
									"text" : "p player3_assign"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-108",
									"lastchannelcount" : 9,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 979.259227156639099, 901.48145192861557, 187.0, 129.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "mc.live.gain~[3]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "mc.live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "mc.live.gain~[2]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-102",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 107.0, 1000.0, 780.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.352936267852783, 201.764714300632477, 97.0, 22.0 ],
													"text" : "prepend position"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 487.804889678955078, 857.31709361076355, 118.0, 22.0 ],
													"text" : "prepend outputgains"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 795.121970176696777, 558.536598682403564, 133.0, 22.0 ],
													"text" : "random @range -12 12"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 600.000014305114746, 402.439033985137939, 215.0, 22.0 ],
													"text" : "t b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-149",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 489.285695552825928, 118.487387895584106, 57.0, 22.0 ],
													"text" : "r endPos"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-145",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 431.302505731582642, 118.487387895584106, 60.0, 22.0 ],
													"text" : "r startPos"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.352936267852783, 171.428561210632324, 308.403342962265015, 22.0 ],
													"text" : "scale 0. 360. 0. 1200."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.352936267852783, 118.487387895584106, 87.0, 22.0 ],
													"text" : "r selected_az2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 727.0, 54.0, 87.0, 22.0 ],
													"text" : "r selected_up2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.027978658676147, 27.0, 75.0, 22.0 ],
													"text" : "r experience"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 727.0, 116.0, 103.0, 22.0 ],
													"text" : "scale 0. 90. 0. 60."
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-102",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 727.0, 156.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-98",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 707.0, 192.0, 40.0, 22.0 ],
													"text" : "* 100."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-89",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 707.0, 231.0, 84.0, 22.0 ],
													"text" : "resampling $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 591.911753416061401, 233.510636627674103, 87.0, 22.0 ],
													"text" : "r granu_period"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 493.382343530654907, 233.510636627674103, 71.0, 22.0 ],
													"text" : "r granu_dur"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-10",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 68.382351636886597, 657.352928638458252, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-72",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 100.645625114440918, 139.392991364002228, 29.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-71",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 69.027978658676147, 138.657697260379791, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 100.645625114440918, 111.45181542634964, 34.0, 22.0 ],
													"text" : "sel 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 69.027978658676147, 78.363580763339996, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 68.292684555053711, 178.363578855991364, 107.462682723999023, 22.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 157.26327109336853, 84.981227695941925, 61.0, 22.0 ],
													"text" : "r playing2"
												}

											}
, 											{
												"box" : 												{
													"attr" : "play",
													"id" : "obj-39",
													"maxclass" : "attrui",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 68.292684555053711, 233.510636627674103, 136.51452448964119, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.352936267852783, 233.510636627674103, 66.0, 22.0 ],
													"text" : "r granpos2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 489.024401903152466, 504.878060817718506, 29.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 487.804889678955078, 465.8536696434021, 79.0, 22.0 ],
													"text" : "r bothhands2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 487.804889678955078, 543.902451992034912, 129.106382191181183, 22.0 ],
													"text" : "gate 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 487.804889678955078, 817.073190212249756, 60.0, 22.0 ],
													"text" : "zl.change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 487.804889678955078, 719.51221227645874, 95.0, 22.0 ],
													"text" : "1 0 0 0 0 0 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-76",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 597.560989856719971, 674.390259981155396, 95.0, 22.0 ],
													"text" : "1 2 3 4 5 6 7 8 9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 597.560989856719971, 626.829283237457275, 180.748657822608948, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 597.560989856719971, 719.51221227645874, 181.0, 22.0 ],
													"text" : "vexpr $i1 == $i2 @scalarmode 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 597.560989856719971, 592.68294095993042, 115.0, 22.0 ],
													"text" : "random @range 2 9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-114",
													"maxclass" : "newobj",
													"numinlets" : 9,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 67.97385835647583, 434.14635181427002, 445.142150576152517, 22.0 ],
													"text" : "mc.pack~ 9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 10,
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
													"patching_rect" : [ 68.292684555053711, 321.951227188110352, 498.0, 22.0 ],
													"saved_object_attributes" : 													{
														"resampleaudioinput" : 0,
														"verbose" : 1
													}
,
													"text" : "mubu.granular~ 9 voiceDB @audio audio @play 0 @outputposition 1 @duplicatechannels 1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 266.852936267852783, 219.0, 267.282051801681519, 219.0, 267.282051801681519, 306.0, 77.792684555053711, 306.0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 1 ],
													"midpoints" : [ 736.5, 182.0, 737.5, 182.0 ],
													"source" : [ "obj-102", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-102", 0 ],
													"source" : [ "obj-104", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-114", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 502.882343530654907, 306.0, 77.792684555053711, 306.0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 601.411753416061401, 306.0, 77.792684555053711, 306.0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 3 ],
													"source" : [ "obj-145", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 4 ],
													"source" : [ "obj-149", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 1 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 8 ],
													"source" : [ "obj-19", 8 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 7 ],
													"source" : [ "obj-19", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 6 ],
													"source" : [ "obj-19", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 5 ],
													"source" : [ "obj-19", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 4 ],
													"source" : [ "obj-19", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 3 ],
													"source" : [ "obj-19", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 2 ],
													"source" : [ "obj-19", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 1 ],
													"source" : [ "obj-19", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-19", 9 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 266.852936267852783, 306.0, 77.792684555053711, 306.0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"source" : [ "obj-21", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 52.512215852737427, 848.536604642868042, 52.512215852737427, 317.536604642868042, 77.792684555053711, 317.536604642868042 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"midpoints" : [ 497.304889678955078, 856.589008569717407 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"midpoints" : [ 607.060989856719971, 802.589008569717407, 497.304889678955078, 802.589008569717407 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 1 ],
													"source" : [ "obj-61", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"order" : 0,
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"order" : 1,
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"source" : [ "obj-66", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"source" : [ "obj-7", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 716.5, 306.0, 77.792684555053711, 306.0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"midpoints" : [ 804.621970176696777, 573.0, 947.433364629745483, 573.0, 947.433364629745483, 426.0, 1002.864892721176147, 426.0, 1002.864892721176147, 354.0, 1011.0, 354.0, 1011.0, 189.0, 716.5, 189.0 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-98", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 748.88886433839798, 660.740719079971313, 109.0, 22.0 ],
									"text" : "p player2_granular"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-104",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 107.0, 1000.0, 780.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 509.803937673568726, 392.810469925403595, 29.5, 22.0 ],
													"text" : "> 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.894734382629395, 61.184209942817688, 58.0, 22.0 ],
													"text" : "r upoffset"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 353.947365045547485, 470.394732356071472, 89.0, 22.0 ],
													"text" : "s selected_up2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 467.763153433799744, 367.76315438747406, 43.0, 22.0 ],
													"text" : "r Lup2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 353.947365045547485, 424.342101216316223, 132.89473557472229, 22.0 ],
													"text" : "switch 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.526311874389648, 367.76315438747406, 45.0, 22.0 ],
													"text" : "r Rup2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 597.385639786720276, 437.061397969722748, 33.0, 22.0 ],
													"text" : "== 3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 509.8684161901474, 437.499995827674866, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 509.8684161901474, 470.394732356071472, 63.0, 22.0 ],
													"text" : "s playing2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 597.385639786720276, 470.394732356071472, 81.0, 22.0 ],
													"text" : "s bothhands2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 107.406400978565216, 308.192539632320404, 100.827454626560211, 22.0 ],
													"text" : "sel 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 188.406400978565216, 470.394732356071472, 89.0, 22.0 ],
													"text" : "s selected_az2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 302.052628517150879, 367.76315438747406, 42.0, 22.0 ],
													"text" : "r Laz2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 188.157892942428589, 424.342101216316223, 132.89473557472229, 22.0 ],
													"text" : "switch 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 38.935809969902039, 242.192539632320404, 66.470591008663177, 64.0 ],
													"text" : "0 両方下げ\n1 右上げ\n2 左上げ\n3 両方上げ"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 245.105260729789734, 367.76315438747406, 44.0, 22.0 ],
													"text" : "r Raz2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 107.406400978565216, 258.074893236160278, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 107.406400978565216, 212.299461960792542, 100.0, 22.0 ],
													"text" : "expr $f1 + $f2 * 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 107.406400978565216, 182.352938771247864, 90.219513893127441, 22.0 ],
													"text" : "pak 0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 178.529393553733826, 145.989303469657898, 43.0, 22.0 ],
													"text" : ">= 30."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 107.236841082572937, 145.989303469657898, 48.169559895992279, 22.0 ],
													"text" : ">= 30."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-156",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 107.236841082572937, 61.184209942817688, 45.0, 22.0 ],
													"text" : "r Rup2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 178.529393553733826, 61.184209942817688, 43.0, 22.0 ],
													"text" : "r Lup2"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"midpoints" : [ 198.733855605125427, 411.0, 363.447365045547485, 411.0 ],
													"order" : 0,
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-156", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 2 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 1 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"midpoints" : [ 267.394734382629395, 132.0, 145.906400978565216, 132.0 ],
													"order" : 1,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 1 ],
													"midpoints" : [ 267.394734382629395, 132.0, 212.029393553733826, 132.0 ],
													"order" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 2,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-2", 0 ],
													"midpoints" : [ 116.906400978565216, 294.0, 522.0, 294.0, 522.0, 387.0, 519.303937673568726, 387.0 ],
													"order" : 1,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"midpoints" : [ 116.906400978565216, 282.0, 126.0, 282.0, 126.0, 294.0, 606.885639786720276, 294.0 ],
													"order" : 0,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 2 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 748.88886433839798, 560.740722358226776, 99.0, 22.0 ],
									"text" : "p player2_assign"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-105",
									"lastchannelcount" : 9,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 748.88886433839798, 897.037007629871368, 187.0, 129.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "mc.live.gain~[2]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "mc.live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "mc.live.gain~[1]"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-99",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 635.947732508182526, 246.405236542224884, 89.0, 22.0 ],
									"text" : "s granu_period"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-12",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 533.986944973468781, 246.405236542224884, 73.0, 22.0 ],
									"text" : "s granu_dur"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-97",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "multichannelsignal" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 107.0, 1000.0, 780.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 256.470598936080933, 200.000008344650269, 97.0, 22.0 ],
													"text" : "prepend position"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 978.125, 850.0, 118.0, 22.0 ],
													"text" : "prepend outputgains"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "bang" ],
													"patching_rect" : [ 1089.0625, 503.125, 215.0, 22.0 ],
													"text" : "t b b"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-92",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1285.9375, 592.1875, 133.0, 22.0 ],
													"text" : "random @range -12 12"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-149",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 489.285695552825928, 118.487387895584106, 57.0, 22.0 ],
													"text" : "r endPos"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-145",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 431.302505731582642, 118.487387895584106, 60.0, 22.0 ],
													"text" : "r startPos"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.352936267852783, 171.428561210632324, 308.403342962265015, 22.0 ],
													"text" : "scale 0. 360. 0. 1200."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 727.0, 54.0, 87.0, 22.0 ],
													"text" : "r selected_up1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-14",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 69.027978658676147, 27.0, 75.0, 22.0 ],
													"text" : "r experience"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-104",
													"maxclass" : "newobj",
													"numinlets" : 6,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 727.0, 116.0, 103.0, 22.0 ],
													"text" : "scale 0. 90. 0. 60."
												}

											}
, 											{
												"box" : 												{
													"format" : 6,
													"id" : "obj-102",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 727.0, 156.0, 50.0, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-98",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 707.0, 192.0, 40.0, 22.0 ],
													"text" : "* 100."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-89",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 707.0, 231.0, 84.0, 22.0 ],
													"text" : "resampling $1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 591.911753416061401, 233.510636627674103, 87.0, 22.0 ],
													"text" : "r granu_period"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-12",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 493.382343530654907, 233.510636627674103, 71.0, 22.0 ],
													"text" : "r granu_dur"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-10",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 68.382351636886597, 657.352928638458252, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-45",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.352936267852783, 118.487387895584106, 87.0, 22.0 ],
													"text" : "r selected_az1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-72",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 100.645625114440918, 139.392991364002228, 29.5, 22.0 ],
													"text" : "0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-71",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 69.027978658676147, 138.657697260379791, 24.0, 24.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-66",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 100.645625114440918, 111.45181542634964, 34.0, 22.0 ],
													"text" : "sel 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-65",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 69.027978658676147, 78.363580763339996, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-28",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 68.292684555053711, 178.363578855991364, 107.462682723999023, 22.0 ],
													"text" : "gate"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-15",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 157.26327109336853, 84.981227695941925, 61.0, 22.0 ],
													"text" : "r playing1"
												}

											}
, 											{
												"box" : 												{
													"attr" : "play",
													"id" : "obj-39",
													"maxclass" : "attrui",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 68.292684555053711, 233.510636627674103, 136.51452448964119, 22.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.352936267852783, 233.510636627674103, 66.0, 22.0 ],
													"text" : "r granpos1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 978.125, 521.875, 29.5, 22.0 ],
													"text" : "+ 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-8",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 978.125, 485.9375, 79.0, 22.0 ],
													"text" : "r bothhands1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 979.6875, 554.6875, 129.106382191181183, 22.0 ],
													"text" : "gate 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-6",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "", "" ],
													"patching_rect" : [ 978.125, 815.625, 60.0, 22.0 ],
													"text" : "zl.change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 979.6875, 673.4375, 95.0, 22.0 ],
													"presentation_linecount" : 2,
													"text" : "1 0 0 0 0 0 0 0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-76",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1089.0625, 673.4375, 95.0, 22.0 ],
													"presentation_linecount" : 2,
													"text" : "1 2 3 4 5 6 7 8 9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-61",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "int" ],
													"patching_rect" : [ 1089.0625, 626.5625, 180.748657822608948, 22.0 ],
													"text" : "t b i"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-60",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1089.0625, 718.75, 181.0, 22.0 ],
													"text" : "vexpr $i1 == $i2 @scalarmode 1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-54",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 1089.0625, 592.1875, 115.0, 22.0 ],
													"text" : "random @range 2 9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-114",
													"maxclass" : "newobj",
													"numinlets" : 9,
													"numoutlets" : 1,
													"outlettype" : [ "multichannelsignal" ],
													"patching_rect" : [ 67.469882011413574, 434.939775109291077, 931.886094868183136, 22.0 ],
													"text" : "mc.pack~ 9"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 10,
													"outlettype" : [ "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "signal", "" ],
													"patching_rect" : [ 68.64406943321228, 321.951227188110352, 1044.487187184393406, 22.0 ],
													"saved_object_attributes" : 													{
														"resampleaudioinput" : 0,
														"verbose" : 1
													}
,
													"text" : "mubu.granular~ 9 voiceDB @audio audio @play 0 @outputposition 1 @duplicatechannels 1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 265.970598936080933, 219.0, 267.260501146316528, 219.0, 267.260501146316528, 306.0, 78.14406943321228, 306.0 ],
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 1 ],
													"midpoints" : [ 736.5, 182.0, 737.5, 182.0 ],
													"source" : [ "obj-102", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-102", 0 ],
													"source" : [ "obj-104", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-10", 0 ],
													"source" : [ "obj-114", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 502.882343530654907, 306.0, 78.14406943321228, 306.0 ],
													"source" : [ "obj-12", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 601.411753416061401, 306.0, 78.14406943321228, 306.0 ],
													"source" : [ "obj-13", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-65", 0 ],
													"source" : [ "obj-14", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 3 ],
													"source" : [ "obj-145", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 4 ],
													"source" : [ "obj-149", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 1 ],
													"source" : [ "obj-15", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-104", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 8 ],
													"source" : [ "obj-19", 8 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 7 ],
													"source" : [ "obj-19", 7 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 6 ],
													"source" : [ "obj-19", 6 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 5 ],
													"source" : [ "obj-19", 5 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 4 ],
													"source" : [ "obj-19", 4 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 3 ],
													"source" : [ "obj-19", 3 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 2 ],
													"source" : [ "obj-19", 2 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 1 ],
													"source" : [ "obj-19", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-114", 0 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-21", 0 ],
													"source" : [ "obj-19", 9 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 266.852936267852783, 306.0, 78.14406943321228, 306.0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 1 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-92", 0 ],
													"source" : [ "obj-21", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 987.625, 874.536604642868042, 52.512215852737427, 874.536604642868042, 52.512215852737427, 317.536604642868042, 78.14406943321228, 317.536604642868042 ],
													"source" : [ "obj-22", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-28", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"source" : [ "obj-39", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-45", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-61", 0 ],
													"source" : [ "obj-54", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"midpoints" : [ 1098.5625, 802.536604642868042, 987.625, 802.536604642868042 ],
													"source" : [ "obj-60", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 1 ],
													"source" : [ "obj-61", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-76", 0 ],
													"source" : [ "obj-61", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-66", 0 ],
													"order" : 0,
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-71", 0 ],
													"order" : 1,
													"source" : [ "obj-65", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-72", 0 ],
													"source" : [ "obj-66", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-54", 0 ],
													"source" : [ "obj-7", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-28", 0 ],
													"source" : [ "obj-71", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-39", 0 ],
													"source" : [ "obj-72", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-60", 0 ],
													"source" : [ "obj-76", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-19", 0 ],
													"midpoints" : [ 716.5, 306.0, 78.14406943321228, 306.0 ],
													"source" : [ "obj-89", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-98", 0 ],
													"midpoints" : [ 1295.4375, 630.0, 1443.4375, 630.0, 1443.4375, 477.0, 1321.0, 477.0, 1321.0, 189.0, 716.5, 189.0 ],
													"source" : [ "obj-92", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-89", 0 ],
													"source" : [ "obj-98", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 534.080735474824905, 660.740719079971313, 109.0, 22.0 ],
									"text" : "p player1_granular"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-47",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 0,
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 59.0, 107.0, 1000.0, 780.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-26",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 517.105258226394653, 424.342101216316223, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-24",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 517.105258226394653, 371.052628040313721, 29.5, 22.0 ],
													"text" : "> 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-23",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 257.894734382629395, 61.184209942817688, 58.0, 22.0 ],
													"text" : "r upoffset"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-22",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 353.947365045547485, 470.394732356071472, 89.0, 22.0 ],
													"text" : "s selected_up1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-19",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 467.763153433799744, 367.76315438747406, 43.0, 22.0 ],
													"text" : "r Lup1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-20",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 353.947365045547485, 424.342101216316223, 132.89473557472229, 22.0 ],
													"text" : "switch 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-21",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.526311874389648, 367.76315438747406, 45.0, 22.0 ],
													"text" : "r Rup1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-7",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 592.105257511138916, 437.499995827674866, 33.0, 22.0 ],
													"text" : "== 3"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 517.105258226394653, 470.394732356071472, 63.0, 22.0 ],
													"text" : "s playing1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 592.105257511138916, 470.394732356071472, 81.0, 22.0 ],
													"text" : "s bothhands1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-1",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 107.406400978565216, 308.192539632320404, 100.827454626560211, 22.0 ],
													"text" : "sel 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-44",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 188.406400978565216, 470.394732356071472, 89.0, 22.0 ],
													"text" : "s selected_az1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 302.052628517150879, 367.76315438747406, 42.0, 22.0 ],
													"text" : "r Laz1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 3,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 188.157892942428589, 424.342101216316223, 132.89473557472229, 22.0 ],
													"text" : "switch 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"linecount" : 4,
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 45.394736409187317, 242.192539632320404, 66.470591008663177, 64.0 ],
													"text" : "0 両方下げ\n1 右上げ\n2 左上げ\n3 両方上げ"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-36",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 245.105260729789734, 367.76315438747406, 44.0, 22.0 ],
													"text" : "r Raz1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-32",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 3,
													"outlettype" : [ "", "int", "int" ],
													"patching_rect" : [ 107.406400978565216, 258.074893236160278, 48.0, 22.0 ],
													"text" : "change"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-30",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 107.406400978565216, 212.299461960792542, 100.0, 22.0 ],
													"text" : "expr $f1 + $f2 * 2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-25",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 107.406400978565216, 182.352938771247864, 90.219513893127441, 22.0 ],
													"text" : "pak 0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 178.529393553733826, 145.989303469657898, 43.0, 22.0 ],
													"text" : ">= 30."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-16",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 107.236841082572937, 145.989303469657898, 48.169559895992279, 22.0 ],
													"text" : ">= 30."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-156",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 107.236841082572937, 61.184209942817688, 45.0, 22.0 ],
													"text" : "r Rup1"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-38",
													"maxclass" : "newobj",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 178.529393553733826, 61.184209942817688, 43.0, 22.0 ],
													"text" : "r Lup1"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 0 ],
													"midpoints" : [ 198.733855605125427, 411.0, 363.447365045547485, 411.0 ],
													"order" : 0,
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"order" : 1,
													"source" : [ "obj-1", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 0 ],
													"source" : [ "obj-156", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 0 ],
													"source" : [ "obj-16", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-25", 1 ],
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 2 ],
													"source" : [ "obj-19", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-22", 0 ],
													"source" : [ "obj-20", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-20", 1 ],
													"source" : [ "obj-21", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-16", 1 ],
													"midpoints" : [ 267.394734382629395, 132.0, 145.906400978565216, 132.0 ],
													"order" : 1,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 1 ],
													"midpoints" : [ 267.394734382629395, 132.0, 212.029393553733826, 132.0 ],
													"order" : 0,
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-26", 0 ],
													"source" : [ "obj-24", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-30", 0 ],
													"source" : [ "obj-25", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"source" : [ "obj-26", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-32", 0 ],
													"source" : [ "obj-30", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-1", 0 ],
													"order" : 2,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-24", 0 ],
													"midpoints" : [ 116.906400978565216, 291.0, 526.605258226394653, 291.0 ],
													"order" : 1,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-7", 0 ],
													"midpoints" : [ 116.906400978565216, 282.0, 126.0, 282.0, 126.0, 294.0, 601.605257511138916, 294.0 ],
													"order" : 0,
													"source" : [ "obj-32", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 1 ],
													"source" : [ "obj-36", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"source" : [ "obj-38", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-44", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 2 ],
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-3", 0 ],
													"source" : [ "obj-7", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 533.986944973468781, 560.46512496471405, 99.0, 22.0 ],
									"text" : "p player1_assign"
								}

							}
, 							{
								"box" : 								{
									"alignviewbounds" : 0,
									"autobounds" : 0,
									"autorefreshrate" : 0,
									"autoupdate" : 120.0,
									"bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"bgcolordefault" : 1,
									"bufferchooser_bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"bufferchooser_bgcolordefault" : 0,
									"bufferchooser_fgcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"bufferchooser_fgcolordefault" : 0,
									"bufferchooser_position" : 1,
									"bufferchooser_shape" : "buttons",
									"bufferchooser_size" : 15,
									"bufferchooser_visible" : 1,
									"continousediting" : 0,
									"cursor_circleedgecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_circlefillcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_circlefilled" : 1,
									"cursor_circleheight" : 3.0,
									"cursor_circlewidth" : 3.0,
									"cursor_color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_crossheight" : -1.0,
									"cursor_crosssizeunit" : 0,
									"cursor_crosswidth" : -1.0,
									"cursor_followmouse" : 0,
									"cursor_label" : "",
									"cursor_labelcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"cursor_labelfontsize" : 12,
									"cursor_labelposition" : 0,
									"cursor_labelxoffset" : 0,
									"cursor_labelyoffset" : 0,
									"cursor_nearest" : 0,
									"cursor_nearestcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_noringoffset" : 0,
									"cursor_numextracursors" : 0,
									"cursor_outputdata" : 0,
									"cursor_position" : [ 0.0, 0.0 ],
									"cursor_shape" : "bar",
									"cursor_size" : 3.0,
									"cursor_sizeunit" : 0,
									"cursor_symbol" : "circle",
									"cursor_symboledgecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_symbolfillcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_symbolfilled" : 1,
									"cursor_symbolheight" : 3.0,
									"cursor_symbolsizeunit" : 0,
									"cursor_symbolwidth" : 3.0,
									"cursor_visible" : 1,
									"dirtypatcher" : 1,
									"domain_bounds" : [ 15.531823529096343, 1546.442948606320442 ],
									"domainruler_bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"domainruler_bgcolordefault" : 1,
									"domainruler_fgcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"domainruler_fgcolordefault" : 1,
									"domainruler_grid" : 0,
									"domainruler_position" : 0,
									"domainruler_size" : 15,
									"domainruler_unit" : 3,
									"domainruler_visible" : 1,
									"domainscrollbar_color" : [ 0.235, 0.235, 0.235, 1.0 ],
									"domainscrollbar_colordefault" : 1,
									"domainscrollbar_size" : 10,
									"domainscrollbar_visible" : 1,
									"embed" : 0,
									"enablemousewheel" : 1,
									"externalfiles" : 1,
									"filename" : "",
									"foremost" : 1,
									"freeze" : 0,
									"id" : "obj-14",
									"layout" : 0,
									"maintrack" : -1,
									"maxclass" : "imubu",
									"mousewheelscroll" : 1,
									"mousewheelshiftstep" : 40,
									"mousewheelstep" : 4,
									"name" : "voiceArchive1",
									"numinlets" : 1,
									"numoutlets" : 1,
									"opacity" : 0.0,
									"opacityprogressive" : 0,
									"orientation" : 0,
									"outlettype" : [ "" ],
									"outputkeys" : 0,
									"outputmouse" : 0,
									"outputrangeselection" : 0,
									"outputselection" : 0,
									"outputtimeselection" : 0,
									"outputvalues" : 0,
									"outputviewname" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 40.0, 975.0, 251.0, 224.0 ],
									"rangeruler_bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"rangeruler_bgcolordefault" : 1,
									"rangeruler_fgcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"rangeruler_fgcolordefault" : 1,
									"rangeruler_grid" : 0,
									"rangeruler_size" : 30,
									"rangeruler_visible" : 1,
									"refreshrate" : 120.0,
									"region_color" : [ 0.52549022436142, 0.541176497936249, 0.509803950786591, 1.0 ],
									"region_visible" : 1,
									"resamplefiles" : 0,
									"ringmaster" : -1,
									"scrollabledomain" : 0,
									"snaprate" : 1000.0,
									"splitbars_color" : [ 0.235, 0.235, 0.235, 1.0 ],
									"splitbars_size" : 2,
									"splitbars_visible" : 1,
									"tabs_bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"tabs_fgcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"tabs_position" : 0,
									"tabs_size" : 20,
									"tabs_visible" : 1,
									"tabsbgcolordefault" : 1,
									"tabsfgcolordefault" : 1,
									"tool" : "edit",
									"toolbar_bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"toolbar_position" : 1,
									"toolbar_size" : 30,
									"toolbar_transposition" : 0,
									"toolbar_visible" : 1,
									"toolbarbgcolordefault" : 1,
									"useplaceholders" : 1,
									"verbose" : 1,
									"vieworder" : [ "default" ],
									"windresize" : 0
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-141",
									"lastchannelcount" : 0,
									"maxclass" : "live.gain~",
									"numinlets" : 2,
									"numoutlets" : 5,
									"outlettype" : [ "signal", "signal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 40.0, 1285.0, 48.0, 136.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "live.gain~[3]",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "live.gain~[3]",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "live.gain~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-140",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "signal", "" ],
									"patching_rect" : [ 40.0, 1240.0, 333.0, 22.0 ],
									"saved_object_attributes" : 									{
										"resampleaudioinput" : 0,
										"verbose" : 1
									}
,
									"text" : "mubu.granular~ voiceArchive1 @audio audio @bufferindex 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-138",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 800.0, 251.0, 22.0 ],
									"text" : "readtrack audio recordings/speech_0001.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-134",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 760.0, 195.0, 22.0 ],
									"text" : "addtrack audio @samplerate audio"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-132",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 930.0, 117.0, 22.0 ],
									"saved_object_attributes" : 									{
										"dirtypatcher" : 1,
										"embed" : 0,
										"externalfiles" : 1,
										"maintrack" : -1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"ringmaster" : -1,
										"savegui" : 0,
										"snaprate" : 1000.0,
										"verbose" : 1
									}
,
									"text" : "mubu voiceArchive3"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-131",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 885.0, 117.0, 22.0 ],
									"saved_object_attributes" : 									{
										"dirtypatcher" : 1,
										"embed" : 0,
										"externalfiles" : 1,
										"maintrack" : -1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"ringmaster" : -1,
										"savegui" : 0,
										"snaprate" : 1000.0,
										"verbose" : 1
									}
,
									"text" : "mubu voiceArchive2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-127",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 840.0, 117.0, 22.0 ],
									"saved_object_attributes" : 									{
										"dirtypatcher" : 1,
										"embed" : 0,
										"externalfiles" : 1,
										"maintrack" : -1,
										"parameter_enable" : 0,
										"parameter_mappable" : 0,
										"resamplefiles" : 0,
										"ringmaster" : -1,
										"savegui" : 0,
										"snaprate" : 1000.0,
										"verbose" : 1
									}
,
									"text" : "mubu voiceArchive1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-125",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 370.0, 455.0, 123.0, 22.0 ],
									"text" : "duplicate archiveRaw"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-121",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 275.0, 585.0, 38.0, 22.0 ],
									"text" : "zl.reg"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-118",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 235.0, 500.0, 79.0, 22.0 ],
									"text" : "prepend crop"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-103",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "bang", "bang", "bang" ],
									"patching_rect" : [ 40.0, 410.0, 349.0, 22.0 ],
									"text" : "t b b b"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-101",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.0, 365.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-87",
									"linecount" : 3,
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 40.0, 550.0, 218.0, 50.0 ],
									"text" : "sprintf writewave Patcher:/recordings/speech_%04ld.wav"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-86",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 120.0, 455.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-75",
									"maxclass" : "newobj",
									"numinlets" : 5,
									"numoutlets" : 4,
									"outlettype" : [ "int", "", "", "int" ],
									"patching_rect" : [ 40.0, 500.0, 61.0, 22.0 ],
									"text" : "counter"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-70",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 40.0, 455.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-68",
									"maxclass" : "newobj",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 235.0, 455.0, 72.0, 22.0 ],
									"text" : "r speechdur"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-67",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1789.361689329147339, 636.170208215713501, 74.0, 22.0 ],
									"text" : "s speechdur"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-62",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1789.361689329147339, 591.489357471466064, 34.0, 22.0 ],
									"text" : "pack"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-57",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 40.0, 635.0, 123.0, 22.0 ],
									"text" : "buffer~ archiveExport"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-55",
									"maxclass" : "newobj",
									"numinlets" : 3,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 385.0, 210.0, 116.0, 22.0 ],
									"text" : "record~ archiveRaw"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-37",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"patching_rect" : [ 1789.361689329147339, 157.446807384490967, 61.0, 22.0 ],
									"text" : "delay 500"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-27",
									"index" : 3,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 775.862109661102295, 150.715576350688934, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-24",
									"index" : 2,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 385.0, 45.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-146",
									"lastchannelcount" : 9,
									"maxclass" : "mc.live.gain~",
									"numinlets" : 1,
									"numoutlets" : 4,
									"outlettype" : [ "multichannelsignal", "", "float", "list" ],
									"parameter_enable" : 1,
									"patching_rect" : [ 534.074056565761566, 897.037007629871368, 187.0, 129.0 ],
									"saved_attribute_attributes" : 									{
										"valueof" : 										{
											"parameter_longname" : "mc.live.gain~",
											"parameter_mmax" : 6.0,
											"parameter_mmin" : -70.0,
											"parameter_modmode" : 3,
											"parameter_shortname" : "mc.live.gain~",
											"parameter_type" : 0,
											"parameter_unitstyle" : 4
										}

									}
,
									"varname" : "mc.live.gain~"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-23",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 635.947732508182526, 107.189545869827271, 70.0, 22.0 ],
									"text" : "loadmess 5"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-22",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 533.986944973468781, 107.189545869827271, 83.0, 22.0 ],
									"text" : "loadmess 100"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-17",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1789.361689329147339, 1361.702117919921875, 68.0, 22.0 ],
									"text" : "s granpos1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-123",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1989.361687898635864, 536.170208930969238, 82.0, 22.0 ],
									"text" : "expr $f1 + $f2"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-120",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 1989.361687898635864, 491.489358186721802, 61.0, 22.0 ],
									"text" : "unpack f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-119",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1989.361687898635864, 402.127656698226929, 47.0, 22.0 ],
									"text" : "getsize"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-117",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1789.361689329147339, 353.191486835479736, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-115",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1789.361689329147339, 402.127656698226929, 35.0, 22.0 ],
									"text" : "get 0"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-113",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1789.361689329147339, 446.808507442474365, 158.0, 22.0 ],
									"saved_object_attributes" : 									{
										"savegui" : 0,
										"verbose" : 1
									}
,
									"text" : "mubu.track voiceDB speech"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-110",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "float" ],
									"patching_rect" : [ 1789.361689329147339, 491.489358186721802, 61.0, 22.0 ],
									"text" : "unpack f f"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-109",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 2180.851048231124878, 536.170208930969238, 42.0, 22.0 ],
									"text" : "get $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-100",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 2180.851048231124878, 491.489358186721802, 61.0, 22.0 ],
									"text" : "route size"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-94",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 3,
									"outlettype" : [ "", "", "" ],
									"patching_rect" : [ 1989.361687898635864, 446.808507442474365, 158.0, 22.0 ],
									"saved_object_attributes" : 									{
										"savegui" : 0,
										"verbose" : 1
									}
,
									"text" : "mubu.track voiceDB speech"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-93",
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1789.361689329147339, 202.127658128738403, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-91",
									"linecount" : 5,
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 4,
									"outlettype" : [ "", "", "int", "" ],
									"patching_rect" : [ 1789.361689329147339, 246.80850887298584, 330.0, 77.0 ],
									"saved_object_attributes" : 									{
										"verbose" : 1
									}
,
									"text" : "mubu.process voiceDB audio descr:gate @name speech @process 0 @timetagged 1 @gate.colindex 4 @gate.numcols 1 @gate.threshold -40 @gate.offthresh -50 @gate.durthresh 50 @gate.mininter 100 @gate.duration 1 @gate.mean 1"
								}

							}
, 							{
								"box" : 								{
									"hidden" : 1,
									"id" : "obj-29",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1875.361689329147339, 716.0, 70.0, 22.0 ],
									"text" : "loadmess 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-33",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1875.361689329147339, 760.0, 22.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-46",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"appversion" : 										{
											"major" : 9,
											"minor" : 0,
											"revision" : 8,
											"architecture" : "x64",
											"modernui" : 1
										}
,
										"classnamespace" : "box",
										"rect" : [ 80.0, 100.0, 1000.0, 450.0 ],
										"gridsize" : [ 15.0, 15.0 ],
										"boxes" : [ 											{
												"box" : 												{
													"id" : "obj-13",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 615.0, 190.0, 71.0, 20.0 ],
													"text" : "clear region"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-11",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 560.0, 190.0, 29.5, 22.0 ],
													"text" : "0 0"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-9",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 2,
													"outlettype" : [ "bang", "" ],
													"patching_rect" : [ 560.0, 145.0, 34.0, 22.0 ],
													"text" : "sel 0"
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"hidden" : 1,
													"id" : "obj-2",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.0, 205.0, 91.0, 22.0 ],
													"text" : "loadmess set 1"
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"hidden" : 1,
													"id" : "obj-1",
													"index" : 2,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"patching_rect" : [ 410.0, 45.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-7",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 560.0, 250.0, 60.0, 22.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
													"bgcolor2" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_color1" : [ 0.38, 0.38, 0.38, 1.0 ],
													"bgfillcolor_color2" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "gradient",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"gradient" : 1,
													"id" : "obj-8",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 560.0, 295.0, 83.0, 22.0 ],
													"text" : "positionvar $1",
													"textcolor" : [ 0.92, 0.92, 0.92, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
													"bgcolor2" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_color1" : [ 0.38, 0.38, 0.38, 1.0 ],
													"bgfillcolor_color2" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "gradient",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"gradient" : 1,
													"id" : "obj-151",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 860.0, 295.0, 85.0, 22.0 ],
													"text" : "durationvar $1",
													"textcolor" : [ 0.92, 0.92, 0.92, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-157",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 860.0, 250.0, 60.0, 22.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"format" : 6,
													"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
													"id" : "obj-170",
													"maxclass" : "flonum",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "", "bang" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 710.0, 250.0, 60.0, 22.0 ],
													"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
													"triscale" : 0.9
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
													"bgcolor2" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_color1" : [ 0.38, 0.38, 0.38, 1.0 ],
													"bgfillcolor_color2" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "gradient",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"gradient" : 1,
													"id" : "obj-171",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 710.0, 295.0, 69.0, 22.0 ],
													"text" : "duration $1",
													"textcolor" : [ 0.92, 0.92, 0.92, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-5",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 410.0, 250.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
													"bgcolor2" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_color1" : [ 0.38, 0.38, 0.38, 1.0 ],
													"bgfillcolor_color2" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "gradient",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"gradient" : 1,
													"id" : "obj-6",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.0, 295.0, 72.0, 22.0 ],
													"text" : "centered $1",
													"textcolor" : [ 0.92, 0.92, 0.92, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-18",
													"maxclass" : "toggle",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"parameter_enable" : 0,
													"patching_rect" : [ 410.0, 100.0, 20.0, 20.0 ]
												}

											}
, 											{
												"box" : 												{
													"bgcolor" : [ 0.38, 0.38, 0.38, 1.0 ],
													"bgcolor2" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor_angle" : 270.0,
													"bgfillcolor_autogradient" : 0.0,
													"bgfillcolor_color" : [ 0.290196, 0.309804, 0.301961, 1.0 ],
													"bgfillcolor_color1" : [ 0.38, 0.38, 0.38, 1.0 ],
													"bgfillcolor_color2" : [ 0.3, 0.3, 0.3, 1.0 ],
													"bgfillcolor_proportion" : 0.39,
													"bgfillcolor_type" : "gradient",
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"gradient" : 1,
													"id" : "obj-23",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 410.0, 145.0, 100.0, 22.0 ],
													"text" : "outputposition $1",
													"textcolor" : [ 0.92, 0.92, 0.92, 1.0 ]
												}

											}
, 											{
												"box" : 												{
													"fontname" : "Arial",
													"fontsize" : 12.0,
													"hidden" : 1,
													"id" : "obj-4",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 410.0, 365.0, 125.0, 22.0 ],
													"text" : "s mubu-granular-help"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-3",
													"maxclass" : "comment",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 40.0, 15.0, 340.0, 22.0 ],
													"text" : "粒の実際の再生範囲を表示"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-43",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 2,
													"outlettype" : [ "float", "float" ],
													"patching_rect" : [ 40.0, 100.0, 105.0, 22.0 ],
													"text" : "unpack 1. 2."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-42",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 195.0, 105.0, 22.0 ],
													"text" : "pack 1. 2."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-41",
													"maxclass" : "newobj",
													"numinlets" : 1,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 180.0, 245.0, 167.0, 22.0 ],
													"text" : "loadmess region color orange"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-40",
													"maxclass" : "newobj",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"patching_rect" : [ 125.0, 145.0, 42.0, 22.0 ],
													"text" : "+ 100."
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-37",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 245.0, 75.0, 22.0 ],
													"text" : "region $1 $2"
												}

											}
, 											{
												"box" : 												{
													"id" : "obj-35",
													"maxclass" : "message",
													"numinlets" : 2,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 180.0, 100.0, 145.0, 22.0 ],
													"text" : "-52.903481 100."
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-44",
													"index" : 1,
													"maxclass" : "inlet",
													"numinlets" : 0,
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"patching_rect" : [ 40.0, 45.0, 30.0, 30.0 ]
												}

											}
, 											{
												"box" : 												{
													"comment" : "",
													"id" : "obj-45",
													"index" : 1,
													"maxclass" : "outlet",
													"numinlets" : 1,
													"numoutlets" : 0,
													"patching_rect" : [ 40.0, 310.0, 30.0, 30.0 ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"destination" : [ "obj-18", 0 ],
													"hidden" : 1,
													"source" : [ "obj-1", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"midpoints" : [ 569.5, 235.0, 49.5, 235.0 ],
													"source" : [ "obj-11", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 1,
													"midpoints" : [ 869.5, 341.0, 419.5, 341.0 ],
													"source" : [ "obj-151", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-151", 0 ],
													"hidden" : 1,
													"source" : [ "obj-157", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-171", 0 ],
													"hidden" : 1,
													"source" : [ "obj-170", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 1,
													"midpoints" : [ 719.5, 349.0, 419.5, 349.0 ],
													"source" : [ "obj-171", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-23", 0 ],
													"hidden" : 1,
													"order" : 1,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-9", 0 ],
													"midpoints" : [ 419.5, 132.5, 569.5, 132.5 ],
													"order" : 0,
													"source" : [ "obj-18", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-5", 0 ],
													"hidden" : 1,
													"source" : [ "obj-2", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 1,
													"midpoints" : [ 419.5, 177.0, 400.0, 177.0, 400.0, 355.0, 419.5, 355.0 ],
													"source" : [ "obj-23", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"source" : [ "obj-37", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 1 ],
													"midpoints" : [ 134.5, 181.0, 135.5, 181.0 ],
													"source" : [ "obj-40", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-45", 0 ],
													"midpoints" : [ 189.5, 288.5, 49.5, 288.5 ],
													"source" : [ "obj-41", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-37", 0 ],
													"source" : [ "obj-42", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 1 ],
													"midpoints" : [ 135.5, 133.5, 157.5, 133.5 ],
													"source" : [ "obj-43", 1 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-40", 0 ],
													"midpoints" : [ 49.5, 133.5, 134.5, 133.5 ],
													"order" : 0,
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-42", 0 ],
													"order" : 1,
													"source" : [ "obj-43", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-35", 1 ],
													"midpoints" : [ 49.5, 87.5, 315.5, 87.5 ],
													"order" : 0,
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-43", 0 ],
													"order" : 1,
													"source" : [ "obj-44", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-6", 0 ],
													"hidden" : 1,
													"source" : [ "obj-5", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 1,
													"source" : [ "obj-6", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-8", 0 ],
													"hidden" : 1,
													"source" : [ "obj-7", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-4", 0 ],
													"hidden" : 1,
													"midpoints" : [ 569.5, 327.0, 419.5, 327.0 ],
													"source" : [ "obj-8", 0 ]
												}

											}
, 											{
												"patchline" : 												{
													"destination" : [ "obj-11", 0 ],
													"source" : [ "obj-9", 0 ]
												}

											}
 ]
									}
,
									"patching_rect" : [ 1789.361689329147339, 834.0, 108.0, 22.0 ],
									"text" : "p highlight position"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-13",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1789.361689329147339, 1227.659565687179565, 75.0, 22.0 ],
									"text" : "route visible"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-81",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 1789.361689329147339, 1182.978714942932129, 75.0, 22.0 ],
									"text" : "route cursor"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"format" : 6,
									"id" : "obj-82",
									"maxclass" : "flonum",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "bang" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 1789.361689329147339, 1272.340416431427002, 58.0, 22.0 ]
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"hidden" : 1,
									"id" : "obj-26",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 1789.361689329147339, 1317.021267175674438, 99.0, 22.0 ],
									"text" : "prepend position"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-80",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 533.986944973468781, 186.928110480308533, 71.0, 22.0 ],
									"text" : "duration $1"
								}

							}
, 							{
								"box" : 								{
									"fontname" : "Arial",
									"fontsize" : 12.0,
									"id" : "obj-7",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 635.947732508182526, 186.928110480308533, 61.0, 22.0 ],
									"text" : "period $1"
								}

							}
, 							{
								"box" : 								{
									"alignviewbounds" : 0,
									"autobounds" : 0,
									"autorefreshrate" : 0,
									"autoupdate" : 120.0,
									"bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"bgcolordefault" : 1,
									"bufferchooser_bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"bufferchooser_bgcolordefault" : 1,
									"bufferchooser_fgcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"bufferchooser_fgcolordefault" : 0,
									"bufferchooser_position" : 1,
									"bufferchooser_shape" : "buttons",
									"bufferchooser_size" : 15,
									"bufferchooser_visible" : 1,
									"continousediting" : 0,
									"cursor_circleedgecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_circlefillcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_circlefilled" : 1,
									"cursor_circleheight" : 3.0,
									"cursor_circlewidth" : 3.0,
									"cursor_color" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_crossheight" : -1.0,
									"cursor_crosssizeunit" : 0,
									"cursor_crosswidth" : -1.0,
									"cursor_followmouse" : 0,
									"cursor_label" : "",
									"cursor_labelcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
									"cursor_labelfontsize" : 12,
									"cursor_labelposition" : 0,
									"cursor_labelxoffset" : 0,
									"cursor_labelyoffset" : 0,
									"cursor_nearest" : 0,
									"cursor_nearestcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_noringoffset" : 0,
									"cursor_numextracursors" : 0,
									"cursor_outputdata" : 0,
									"cursor_position" : [ 1.0, -0.607843137254902 ],
									"cursor_shape" : "bar",
									"cursor_size" : 3.0,
									"cursor_sizeunit" : 0,
									"cursor_symbol" : "circle",
									"cursor_symboledgecolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_symbolfillcolor" : [ 1.0, 0.0, 0.0, 1.0 ],
									"cursor_symbolfilled" : 1,
									"cursor_symbolheight" : 3.0,
									"cursor_symbolsizeunit" : 0,
									"cursor_symbolwidth" : 3.0,
									"cursor_visible" : 1,
									"dirtypatcher" : 1,
									"domain_bounds" : [ 0.002140143251311, 0.968280098104585 ],
									"domainruler_bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"domainruler_bgcolordefault" : 1,
									"domainruler_fgcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"domainruler_fgcolordefault" : 1,
									"domainruler_grid" : 0,
									"domainruler_position" : 0,
									"domainruler_size" : 15,
									"domainruler_unit" : 3,
									"domainruler_visible" : 1,
									"domainscrollbar_color" : [ 0.235, 0.235, 0.235, 1.0 ],
									"domainscrollbar_colordefault" : 1,
									"domainscrollbar_size" : 10,
									"domainscrollbar_visible" : 1,
									"embed" : 0,
									"enablemousewheel" : 1,
									"externalfiles" : 1,
									"filename" : "",
									"foremost" : 1,
									"freeze" : 0,
									"id" : "obj-77",
									"layout" : 0,
									"maintrack" : -1,
									"maxclass" : "imubu",
									"mousewheelscroll" : 1,
									"mousewheelshiftstep" : 40,
									"mousewheelstep" : 4,
									"name" : "voiceDB",
									"numinlets" : 1,
									"numoutlets" : 1,
									"opacity" : 0.0,
									"opacityprogressive" : 0,
									"orientation" : 0,
									"outlettype" : [ "" ],
									"outputkeys" : 0,
									"outputmouse" : 0,
									"outputrangeselection" : 0,
									"outputselection" : 0,
									"outputtimeselection" : 0,
									"outputvalues" : 0,
									"outputviewname" : 0,
									"parameter_enable" : 0,
									"patching_rect" : [ 1789.361689329147339, 906.382972240447998, 475.0, 245.0 ],
									"rangeruler_bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"rangeruler_bgcolordefault" : 1,
									"rangeruler_fgcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"rangeruler_fgcolordefault" : 1,
									"rangeruler_grid" : 0,
									"rangeruler_size" : 30,
									"rangeruler_visible" : 1,
									"refreshrate" : 120.0,
									"region_color" : [ 1.0, 0.647058844566345, 0.0, 1.0 ],
									"region_visible" : 1,
									"resamplefiles" : 0,
									"ringmaster" : -1,
									"scrollabledomain" : 0,
									"snaprate" : 1000.0,
									"splitbars_color" : [ 0.235, 0.235, 0.235, 1.0 ],
									"splitbars_size" : 2,
									"splitbars_visible" : 1,
									"tabs_bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"tabs_fgcolor" : [ 0.85, 0.85, 0.85, 1.0 ],
									"tabs_position" : 0,
									"tabs_size" : 20,
									"tabs_visible" : 1,
									"tabsbgcolordefault" : 1,
									"tabsfgcolordefault" : 1,
									"tool" : "cursor",
									"toolbar_bgcolor" : [ 0.235, 0.235, 0.235, 1.0 ],
									"toolbar_position" : 1,
									"toolbar_size" : 30,
									"toolbar_transposition" : 0,
									"toolbar_visible" : 1,
									"toolbarbgcolordefault" : 1,
									"useplaceholders" : 1,
									"verbose" : 1,
									"vieworder" : [ "default" ],
									"windresize" : 0
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-10",
									"index" : 1,
									"maxclass" : "outlet",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 534.146354198455811, 1552.542300701141357, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-8",
									"maxclass" : "message",
									"numinlets" : 2,
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"patching_rect" : [ 385.0, 155.0, 59.0, 22.0 ],
									"text" : "record $1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-6",
									"maxclass" : "toggle",
									"numinlets" : 1,
									"numoutlets" : 1,
									"outlettype" : [ "int" ],
									"parameter_enable" : 0,
									"patching_rect" : [ 385.0, 100.0, 24.0, 24.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-3",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "float", "bang" ],
									"patching_rect" : [ 40.0, 275.0, 159.0, 22.0 ],
									"text" : "buffer~ archiveRaw 15000 1"
								}

							}
, 							{
								"box" : 								{
									"id" : "obj-2",
									"maxclass" : "newobj",
									"numinlets" : 1,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 40.0, 210.0, 315.0, 22.0 ],
									"saved_object_attributes" : 									{
										"verbose" : 1
									}
,
									"text" : "mubu.record~ 1 voiceDB audio @predef 1 @maxsize 10s"
								}

							}
, 							{
								"box" : 								{
									"comment" : "",
									"id" : "obj-1",
									"index" : 1,
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"outlettype" : [ "signal" ],
									"patching_rect" : [ 40.0, 45.0, 30.0, 30.0 ]
								}

							}
, 							{
								"box" : 								{
									"id" : "clean-record-stop",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "bang", "" ],
									"patching_rect" : [ 1789.361689329147339, 112.76595664024353, 46.0, 22.0 ],
									"text" : "sel 0"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "clean-label-1",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 15.0, 220.0, 24.0 ],
									"text" : "録音"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "clean-label-2",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 330.0, 220.0, 24.0 ],
									"text" : "WAV 保存"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "clean-label-3",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 535.0, 70.0, 220.0, 24.0 ],
									"text" : "粒状合成・身体操作"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "clean-label-4",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 800.86211097240448, 193.81902688741684, 71.641788482666016, 24.0 ],
									"text" : "体験状態"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "clean-label-5",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1789.361689329147339, 76.595744132995605, 220.0, 24.0 ],
									"text" : "発声区間解析"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "clean-label-6",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 1789.361689329147339, 676.595739841461182, 220.0, 24.0 ],
									"text" : "再生位置・波形"
								}

							}
, 							{
								"box" : 								{
									"fontsize" : 13.0,
									"id" : "clean-label-8",
									"maxclass" : "comment",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 40.0, 725.0, 220.0, 24.0 ],
									"text" : "アーカイブ・試作"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"destination" : [ "obj-37", 0 ],
									"source" : [ "clean-record-stop", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"order" : 1,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"midpoints" : [ 49.5, 181.0, 394.5, 181.0 ],
									"order" : 0,
									"source" : [ "obj-1", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-109", 0 ],
									"source" : [ "obj-100", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-103", 0 ],
									"source" : [ "obj-101", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 0 ],
									"source" : [ "obj-102", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 0 ],
									"midpoints" : [ 214.5, 526.0, 284.5, 526.0 ],
									"source" : [ "obj-103", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-125", 0 ],
									"midpoints" : [ 379.5, 443.5, 379.5, 443.5 ],
									"source" : [ "obj-103", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-70", 0 ],
									"source" : [ "obj-103", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-151", 0 ],
									"source" : [ "obj-105", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 0 ],
									"source" : [ "obj-106", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-152", 0 ],
									"source" : [ "obj-108", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"midpoints" : [ 2190.351048231124878, 568.702117919921875, 2089.361689329147339, 568.702117919921875, 2089.361689329147339, 436.702117919921875, 1998.861687898635864, 436.702117919921875 ],
									"source" : [ "obj-109", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-145", 0 ],
									"order" : 0,
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 0 ],
									"order" : 1,
									"source" : [ "obj-110", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 0 ],
									"source" : [ "obj-112", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-110", 0 ],
									"source" : [ "obj-113", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 1 ],
									"source" : [ "obj-114", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-113", 0 ],
									"source" : [ "obj-115", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-122", 2 ],
									"source" : [ "obj-116", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-115", 0 ],
									"order" : 1,
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-119", 0 ],
									"midpoints" : [ 1798.861689329147339, 388.702117919921875, 1998.861687898635864, 388.702117919921875 ],
									"order" : 0,
									"source" : [ "obj-117", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-121", 1 ],
									"midpoints" : [ 244.5, 541.0, 303.5, 541.0 ],
									"source" : [ "obj-118", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-94", 0 ],
									"source" : [ "obj-119", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 1 ],
									"midpoints" : [ 2040.861687898635864, 525.202117919921875, 2061.861687898635864, 525.202117919921875 ],
									"source" : [ "obj-120", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-123", 0 ],
									"source" : [ "obj-120", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"midpoints" : [ 284.5, 621.0, 49.5, 621.0 ],
									"source" : [ "obj-121", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-128", 0 ],
									"source" : [ "obj-122", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-149", 0 ],
									"order" : 0,
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-62", 1 ],
									"midpoints" : [ 1998.861687898635864, 575.202117919921875, 1813.861689329147339, 575.202117919921875 ],
									"order" : 1,
									"source" : [ "obj-123", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"midpoints" : [ 379.5, 616.0, 49.5, 616.0 ],
									"source" : [ "obj-125", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-129", 0 ],
									"source" : [ "obj-128", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-130", 0 ],
									"source" : [ "obj-129", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-82", 0 ],
									"hidden" : 1,
									"midpoints" : [ 1854.861689329147339, 1260.202117919921875, 1798.861689329147339, 1260.202117919921875 ],
									"source" : [ "obj-13", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-133", 0 ],
									"source" : [ "obj-130", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-135", 0 ],
									"source" : [ "obj-133", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"midpoints" : [ 49.5, 792.0, 30.0, 792.0, 30.0, 830.0, 49.5, 830.0 ],
									"source" : [ "obj-134", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-146", 0 ],
									"source" : [ "obj-136", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-105", 0 ],
									"source" : [ "obj-137", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-127", 0 ],
									"source" : [ "obj-138", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-108", 0 ],
									"source" : [ "obj-139", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-141", 0 ],
									"source" : [ "obj-140", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 1 ],
									"source" : [ "obj-142", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-137", 1 ],
									"source" : [ "obj-143", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-139", 1 ],
									"source" : [ "obj-144", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-150", 0 ],
									"source" : [ "obj-146", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 0 ],
									"source" : [ "obj-150", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 0 ],
									"source" : [ "obj-150", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-153", 1 ],
									"source" : [ "obj-151", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 2 ],
									"midpoints" : [ 758.38886433839798, 1119.0, 627.666664481163025, 1119.0, 627.666664481163025, 1299.0, 626.57318544387806, 1299.0 ],
									"source" : [ "obj-151", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 1 ],
									"source" : [ "obj-152", 1 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 3 ],
									"midpoints" : [ 988.759227156639099, 1200.0, 1050.0, 1200.0, 1050.0, 1299.0, 668.036601066589242, 1299.0 ],
									"source" : [ "obj-152", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-154", 0 ],
									"source" : [ "obj-153", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-155", 1 ],
									"source" : [ "obj-154", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-157", 0 ],
									"source" : [ "obj-155", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-10", 0 ],
									"source" : [ "obj-157", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-80", 0 ],
									"midpoints" : [ 543.486944973468781, 174.287586003541946, 543.486944973468781, 174.287586003541946 ],
									"source" : [ "obj-22", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-7", 0 ],
									"midpoints" : [ 645.447732508182526, 177.287586003541946, 645.447732508182526, 177.287586003541946 ],
									"source" : [ "obj-23", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-6", 0 ],
									"source" : [ "obj-24", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-17", 0 ],
									"source" : [ "obj-26", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-111", 0 ],
									"source" : [ "obj-27", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-33", 0 ],
									"hidden" : 1,
									"source" : [ "obj-29", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-46", 1 ],
									"midpoints" : [ 1884.861689329147339, 792.702117919921875, 1887.861689329147339, 792.702117919921875 ],
									"source" : [ "obj-33", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-93", 0 ],
									"source" : [ "obj-37", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-77", 0 ],
									"midpoints" : [ 1798.861689329147339, 877.702117919921875, 1798.861689329147339, 877.702117919921875 ],
									"source" : [ "obj-46", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "clean-record-stop", 0 ],
									"midpoints" : [ 394.5, 134.765432000160217, 1254.0, 134.765432000160217, 1254.0, 134.567903995513916, 1798.861689329147339, 134.567903995513916 ],
									"order" : 0,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-55", 0 ],
									"midpoints" : [ 394.5, 134.0, 375.0, 134.0, 375.0, 200.0, 394.5, 200.0 ],
									"order" : 1,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-8", 0 ],
									"order" : 2,
									"source" : [ "obj-6", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-67", 0 ],
									"source" : [ "obj-62", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-118", 0 ],
									"source" : [ "obj-68", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-99", 0 ],
									"source" : [ "obj-7", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 0 ],
									"source" : [ "obj-70", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-87", 0 ],
									"source" : [ "obj-75", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-81", 0 ],
									"source" : [ "obj-77", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-2", 0 ],
									"midpoints" : [ 394.5, 193.5, 49.5, 193.5 ],
									"source" : [ "obj-8", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-12", 0 ],
									"source" : [ "obj-80", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-13", 0 ],
									"hidden" : 1,
									"source" : [ "obj-81", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-26", 0 ],
									"hidden" : 1,
									"source" : [ "obj-82", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-75", 3 ],
									"midpoints" : [ 129.5, 489.5, 81.0, 489.5 ],
									"source" : [ "obj-86", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-57", 0 ],
									"source" : [ "obj-87", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-117", 0 ],
									"midpoints" : [ 2109.861689329147339, 337.702117919921875, 1798.861689329147339, 337.702117919921875 ],
									"source" : [ "obj-91", 3 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-91", 0 ],
									"source" : [ "obj-93", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-100", 0 ],
									"midpoints" : [ 2137.861687898635864, 480.202117919921875, 2190.351048231124878, 480.202117919921875 ],
									"source" : [ "obj-94", 2 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-120", 0 ],
									"source" : [ "obj-94", 0 ]
								}

							}
, 							{
								"patchline" : 								{
									"destination" : [ "obj-136", 0 ],
									"source" : [ "obj-97", 0 ]
								}

							}
 ]
					}
,
					"patching_rect" : [ 335.0, 610.0, 150.0, 22.0 ],
					"text" : "p muburecord"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "newobj",
					"numinlets" : 0,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.0, 90.0, 87.0, 22.0 ],
					"text" : "r selected_az1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-19",
					"lastchannelcount" : 8,
					"maxclass" : "mc.live.gain~",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "multichannelsignal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 335.0, 710.0, 106.0, 132.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "mc.live.gain~[1]",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "mc.live.gain~[1]",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "mc.live.gain~[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-63",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 750.0, 135.0, 134.0, 22.0 ],
					"text" : "prepend /source/1/azim"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-30",
					"maxclass" : "toggle",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 145.0, 550.0, 24.0, 24.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-27",
					"maxclass" : "newobj",
					"numinlets" : 3,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 145.0, 610.0, 60.0, 22.0 ],
					"text" : "record~ a"
				}

			}
, 			{
				"box" : 				{
					"attr" : "edit_mode",
					"id" : "obj-25",
					"maxclass" : "attrui",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 135.0, 228.148140668869019, 22.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontname" : "Arial",
					"fontsize" : 13.0,
					"id" : "obj-24",
					"maxclass" : "newobj",
					"numinlets" : 6,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 40.0, 330.0, 92.0, 23.0 ],
					"text" : "biquad~"
				}

			}
, 			{
				"box" : 				{
					"fontface" : 0,
					"id" : "obj-23",
					"maxclass" : "filtergraph~",
					"nfilters" : 1,
					"numinlets" : 8,
					"numoutlets" : 7,
					"outlettype" : [ "list", "float", "float", "float", "float", "list", "int" ],
					"parameter_enable" : 0,
					"patching_rect" : [ 120.0, 173.0, 256.0, 128.0 ],
					"setfilter" : [ 0, 2, 1, 0, 0, 147.171798706054688, 1.038877964019775, 0.917890608310699, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-22",
					"maxclass" : "spectroscope~",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "" ],
					"patching_rect" : [ 233.05085301399231, 335.593228340148926, 332.0, 106.0 ]
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 1,
					"outlettype" : [ "signal" ],
					"patching_rect" : [ 40.0, 550.0, 34.0, 22.0 ],
					"text" : "*~ 2."
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 335.0, 875.0, 134.0, 22.0 ],
					"text" : "mc.dac~ 1 2 3 4 5 6 7 8"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-8",
					"lastchannelcount" : 0,
					"maxclass" : "live.gain~",
					"numinlets" : 2,
					"numoutlets" : 5,
					"outlettype" : [ "signal", "signal", "", "float", "list" ],
					"parameter_enable" : 1,
					"patching_rect" : [ 40.0, 380.0, 48.0, 136.0 ],
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_longname" : "live.gain~",
							"parameter_mmax" : 6.0,
							"parameter_mmin" : -70.0,
							"parameter_modmode" : 3,
							"parameter_shortname" : "live.gain~",
							"parameter_type" : 0,
							"parameter_unitstyle" : 4
						}

					}
,
					"varname" : "live.gain~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-5",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 4,
					"outlettype" : [ "", "", "", "" ],
					"patching_rect" : [ 750.0, 285.0, 503.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.oper @internals 11 @initwith \"/source/number 11, /room/number 1, /speaker/number 8\""
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-3",
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "multichannelsignal", "" ],
					"patching_rect" : [ 335.0, 665.0, 241.0, 22.0 ],
					"saved_object_attributes" : 					{
						"parameter_enable" : 0
					}
,
					"text" : "spat5.spat~ @inputs 11 @outputs 8 @mc 1"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "ezadc~",
					"numinlets" : 1,
					"numoutlets" : 2,
					"outlettype" : [ "signal", "signal" ],
					"patching_rect" : [ 40.0, 135.0, 45.0, 45.0 ]
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "clean-label-1",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 38.91666778922081, 15.0, 94.16666442155838, 24.0 ],
					"text" : "身体トラッキング"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "clean-label-2",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 335.0, 15.0, 220.0, 24.0 ],
					"text" : "タブレット OSC"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "clean-label-3",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 40.0, 105.0, 220.0, 24.0 ],
					"text" : "マイク入力・フィルター"
				}

			}
, 			{
				"box" : 				{
					"fontsize" : 13.0,
					"id" : "clean-label-4",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 750.0, 55.0, 220.0, 24.0 ],
					"text" : "空間音響  /  8ch"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"destination" : [ "obj-12", 0 ],
					"source" : [ "obj-11", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 1058.163070976734161, 270.0, 759.5, 270.0 ],
					"source" : [ "obj-12", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-63", 0 ],
					"source" : [ "obj-13", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 2 ],
					"midpoints" : [ 445.5, 77.0, 722.0, 77.0, 722.0, 600.0, 475.5, 600.0 ],
					"source" : [ "obj-17", 1 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 1 ],
					"midpoints" : [ 344.5, 77.0, 30.0, 77.0, 30.0, 600.0, 410.0, 600.0 ],
					"source" : [ "obj-17", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-16", 0 ],
					"source" : [ "obj-18", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-9", 0 ],
					"source" : [ "obj-19", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"source" : [ "obj-2", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"midpoints" : [ 49.5, 591.0, 154.5, 591.0 ],
					"order" : 1,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-41", 0 ],
					"midpoints" : [ 49.5, 583.0, 344.5, 583.0 ],
					"order" : 0,
					"source" : [ "obj-21", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-24", 0 ],
					"midpoints" : [ 129.5, 315.5, 49.5, 315.5 ],
					"source" : [ "obj-23", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-22", 0 ],
					"midpoints" : [ 49.5, 363.0, 215.0, 363.0, 215.0, 320.0, 242.55085301399231, 320.0 ],
					"order" : 0,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-8", 0 ],
					"order" : 1,
					"source" : [ "obj-24", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-23", 0 ],
					"source" : [ "obj-25", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-19", 0 ],
					"source" : [ "obj-3", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-27", 0 ],
					"source" : [ "obj-30", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-6", 0 ],
					"source" : [ "obj-4", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"source" : [ "obj-41", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 1217.521355092525482, 269.5, 759.5, 269.5 ],
					"source" : [ "obj-49", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-3", 0 ],
					"midpoints" : [ 759.5, 653.627985715866089, 344.5, 653.627985715866089 ],
					"source" : [ "obj-5", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-49", 0 ],
					"source" : [ "obj-52", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 759.5, 221.0, 759.5, 221.0 ],
					"source" : [ "obj-58", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"midpoints" : [ 906.826177000999451, 270.0, 759.5, 270.0 ],
					"source" : [ "obj-6", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-5", 0 ],
					"source" : [ "obj-63", 0 ]
				}

			}
, 			{
				"patchline" : 				{
					"destination" : [ "obj-21", 0 ],
					"source" : [ "obj-8", 0 ]
				}

			}
 ],
		"parameters" : 		{
			"obj-19" : [ "mc.live.gain~[1]", "mc.live.gain~[1]", 0 ],
			"obj-41::obj-105" : [ "mc.live.gain~[2]", "mc.live.gain~", 0 ],
			"obj-41::obj-108" : [ "mc.live.gain~[3]", "mc.live.gain~", 0 ],
			"obj-41::obj-141" : [ "live.gain~[3]", "live.gain~[3]", 0 ],
			"obj-41::obj-146" : [ "mc.live.gain~", "mc.live.gain~", 0 ],
			"obj-41::obj-157" : [ "mc.live.gain~[4]", "mc.live.gain~[4]", 0 ],
			"obj-8" : [ "live.gain~", "live.gain~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "imubu.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "mubu.granular~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "mubu.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "mubu.process.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "mubu.record~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "mubu.track.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "spat5.oper.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "spat5.spat~.mxe64",
				"type" : "mx64"
			}
, 			{
				"name" : "v13_arms_step1.js",
				"bootpath" : "~/Desktop/M1-Project",
				"patcherrelativepath" : ".",
				"type" : "TEXT",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
