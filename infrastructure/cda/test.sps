<?xml version="1.0" encoding="UTF-8"?>
<structure version="24" xsltversion="1" html-doctype="HTML4 Transitional" compatibility-view="IE9" html-outputextent="Complete" relativeto="*SPS" encodinghtml="UTF-8" encodingrtf="ISO-8859-1" encodingpdf="UTF-8" encodingtext="UTF-8" useimportschema="1" embed-images="1" pastemode="xml" enable-authentic-scripts="1" authentic-scripts-in-debug-mode-external="0" generated-file-location="DEFAULT">
	<parameters/>
	<schemasources>
		<namespaces>
			<nspair prefix="exsl" uri="http://exslt.org/common"/>
			<nspair prefix="n1" uri="urn:hl7-org:v3"/>
		</namespaces>
		<schemasources>
			<xsdschemasource name="XML" main="1" schemafile="strict.dtd"/>
		</schemasources>
	</schemasources>
	<modules/>
	<flags>
		<scripts/>
		<mainparts/>
		<globalparts/>
		<designfragments/>
		<pagelayouts/>
		<xpath-functions/>
	</flags>
	<scripts>
		<script language="javascript"/>
	</scripts>
	<script-project>
		<Project version="4" app="AuthenticView"/>
	</script-project>
	<importedxslt/>
	<globalstyles/>
	<mainparts>
		<children>
			<globaltemplate subtype="main" match="/">
				<document-properties/>
				<children>
					<documentsection>
						<properties columncount="1" columngap="0.50in" headerfooterheight="fixed" pagemultiplepages="0" pagenumberingformat="1" pagenumberingstartat="auto" pagestart="next" paperheight="11in" papermarginbottom="0.79in" papermarginfooter="0.30in" papermarginheader="0.30in" papermarginleft="0.60in" papermarginright="0.60in" papermargintop="0.79in" paperwidth="8.50in"/>
						<watermark>
							<image transparency="50" fill-page="1" center-if-not-fill="1"/>
							<text transparency="50"/>
						</watermark>
					</documentsection>
					<template subtype="source" match="XML">
						<variables/>
					</template>
				</children>
			</globaltemplate>
		</children>
	</mainparts>
	<globalparts>
		<children>
			<globaltemplate subtype="element" match="xsl:stylesheet">
				<children>
					<template subtype="element" match="xsl:stylesheet">
						<children>
							<paragraph>
								<children>
									<calltemplate subtype="element" match="n1:ClinicalDocument"/>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:ClinicalDocument">
				<children>
					<template subtype="element" match="n1:ClinicalDocument">
						<children>
							<paragraph>
								<children>
									<userxmlelem openingtagtext="html">
										<children>
											<userxmlelem openingtagtext="head">
												<children>
													<userxmlelem openingtagtext="meta content=&quot;width=device-width, initial-scale=1&quot; name=&quot;viewport&quot;"/>
													<userxmlelem openingtagtext="title">
														<children>
															<template subtype="element" match="n1:title">
																<children>
																	<content subtype="regular"/>
																</children>
																<variables/>
															</template>
														</children>
													</userxmlelem>
												</children>
											</userxmlelem>
											<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
												<properties id="header"/>
												<children>
													<tgridbody-cols>
														<children>
															<tgridcol/>
															<tgridcol/>
														</children>
													</tgridbody-cols>
													<tgridbody-rows>
														<children>
															<tgridrow>
																<children>
																	<tgridcell>
																		<children>
																			<calltemplate subtype="named" match="printLogo">
																				<parameters/>
																			</calltemplate>
																		</children>
																	</tgridcell>
																	<tgridcell>
																		<children>
																			<paragraph paragraphtag="h2">
																				<properties class="data"/>
																				<children>
																					<autocalc xpath="n1:custodian//n1:name"/>
																				</children>
																			</paragraph>
																			<paragraph paragraphtag="p">
																				<children>
																					<calltemplate subtype="named" match="show-address">
																						<parameters>
																							<parameter name="address" value="n1:custodian//n1:addr"/>
																						</parameters>
																					</calltemplate>
																					<template subtype="userdefined" match="n1:custodian//n1:telecom[@use = &apos;PUB&apos;]">
																						<children>
																							<calltemplate subtype="named" match="show-telecom">
																								<parameters>
																									<parameter name="telecom" value="."/>
																								</parameters>
																							</calltemplate>
																							<newline/>
																						</children>
																						<variables/>
																					</template>
																					<text fixtext=" Médecin biologiste responsable: "/>
																					<calltemplate subtype="named" match="printNameAndId">
																						<parameters>
																							<parameter name="ref" value="n1:legalAuthenticator/n1:assignedEntity"/>
																						</parameters>
																					</calltemplate>
																				</children>
																			</paragraph>
																		</children>
																	</tgridcell>
																</children>
															</tgridrow>
														</children>
													</tgridbody-rows>
												</children>
												<wizard-data-repeat>
													<children/>
												</wizard-data-repeat>
												<wizard-data-rows>
													<children/>
												</wizard-data-rows>
												<wizard-data-columns>
													<children/>
												</wizard-data-columns>
											</tgrid>
											<paragraph paragraphtag="h1">
												<properties class="data"/>
												<children>
													<autocalc xpath="//n1:title"/>
												</children>
											</paragraph>
											<userxmltext text="&lt;table class=&quot;header_table&quot;&gt;
					&lt;tbody&gt;
						&lt;tr&gt;
							&lt;td&gt;
								&lt;span class=&quot;td_label&quot;&gt;
									&lt;xsl:text&gt;Produit le&lt;/xsl:text&gt;
								&lt;/span&gt;
							&lt;/td&gt;
							&lt;td&gt;
								&lt;xsl:call-template name=&quot;printDate&quot;&gt;
									&lt;xsl:with-param name=&quot;date&quot; select=&quot;n1:effectiveTime/@value&quot;/&gt;
								&lt;/xsl:call-template&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
						&lt;xsl:call-template name=&quot;show-patient-name&quot;&gt;
							&lt;xsl:with-param name=&quot;name&quot; select=&quot;n1:recordTarget//n1:patient/n1:name&quot;
							/&gt;
						&lt;/xsl:call-template&gt;
						&lt;tr&gt;
							&lt;td width=&quot;20%&quot;&gt;
								&lt;span class=&quot;td_label&quot;&gt;
									&lt;xsl:text&gt;Date de naissance&lt;/xsl:text&gt;
								&lt;/span&gt;
							&lt;/td&gt;
							&lt;td width=&quot;80%&quot;&gt;
								&lt;xsl:call-template name=&quot;show-time&quot;&gt;
									&lt;xsl:with-param name=&quot;datetime&quot;
										select=&quot;n1:recordTarget//n1:patient/n1:birthTime&quot;/&gt;
								&lt;/xsl:call-template&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
						&lt;tr&gt;
							&lt;td width=&quot;15%&quot;&gt;
								&lt;span class=&quot;td_label&quot;&gt;
									&lt;xsl:text&gt;Sexe&lt;/xsl:text&gt;
								&lt;/span&gt;
							&lt;/td&gt;
							&lt;td&gt;
								&lt;xsl:for-each
									select=&quot;n1:recordTarget//n1:patient/n1:administrativeGenderCode&quot;&gt;
									&lt;xsl:call-template name=&quot;show-gender&quot;/&gt;
								&lt;/xsl:for-each&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
						&lt;xsl:if test=&quot;n1:recordTarget//n1:patient/n1:birthplace/n1:place&quot;&gt;
							&lt;tr&gt;
								&lt;td width=&quot;20%&quot;&gt;
									&lt;span class=&quot;td_label&quot;&gt;
										&lt;xsl:text&gt;Lieu de naissance&lt;/xsl:text&gt;
									&lt;/span&gt;
								&lt;/td&gt;
								&lt;td colspan=&quot;3&quot;&gt;
									&lt;xsl:if
										test=&quot;n1:recordTarget//n1:patient/n1:birthplace/n1:place/n1:name&quot;&gt;
										&lt;xsl:call-template name=&quot;show-name&quot;&gt;
											&lt;xsl:with-param name=&quot;name&quot;
												select=&quot;n1:recordTarget//n1:patient/n1:birthplace/n1:place/n1:name&quot;
											/&gt;
										&lt;/xsl:call-template&gt;
									&lt;/xsl:if&gt;
									&lt;xsl:if
										test=&quot;n1:recordTarget//n1:patient/n1:birthplace/n1:place/n1:addr&quot;&gt;
										&lt;xsl:call-template name=&quot;show-address-city&quot;&gt;
											&lt;xsl:with-param name=&quot;address&quot;
												select=&quot;n1:recordTarget//n1:patient/n1:birthplace/n1:place/n1:addr&quot;
											/&gt;
										&lt;/xsl:call-template&gt;
									&lt;/xsl:if&gt;
								&lt;/td&gt;
							&lt;/tr&gt;
							&lt;tr&gt;
								&lt;td width=&quot;20%&quot;&gt;
									&lt;xsl:if
										test=&quot;n1:recordTarget//n1:patient/n1:birthplace/n1:place/n1:addr/n1:county&quot;&gt;
										&lt;span class=&quot;td_label&quot;&gt;
											&lt;xsl:text&gt;Code INSEE du lieu de naissance&lt;/xsl:text&gt;
										&lt;/span&gt;
									&lt;/xsl:if&gt;
								&lt;/td&gt;
								&lt;td colspan=&quot;3&quot;&gt;
									&lt;xsl:if
										test=&quot;n1:recordTarget//n1:patient/n1:birthplace/n1:place/n1:addr&quot;&gt;
										&lt;xsl:call-template name=&quot;show-address-county&quot;&gt;
											&lt;xsl:with-param name=&quot;address&quot;
												select=&quot;n1:recordTarget//n1:patient/n1:birthplace/n1:place/n1:addr&quot;
											/&gt;
										&lt;/xsl:call-template&gt;
									&lt;/xsl:if&gt;
								&lt;/td&gt;
							&lt;/tr&gt;
						&lt;/xsl:if&gt;
						&lt;tr&gt;
							&lt;td&gt;
								&lt;span class=&quot;td_label&quot;&gt;
									&lt;xsl:text&gt;Adresse&lt;/xsl:text&gt;
								&lt;/span&gt;
							&lt;/td&gt;
							&lt;td&gt;
								&lt;xsl:call-template name=&quot;show-address-patient&quot;&gt;
									&lt;xsl:with-param name=&quot;address&quot;
										select=&quot;n1:recordTarget/n1:patientRole/n1:addr&quot;/&gt;
								&lt;/xsl:call-template&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
						&lt;xsl:for-each select=&quot;n1:recordTarget/n1:patientRole/n1:telecom&quot;&gt;
							&lt;tr&gt;
								&lt;td&gt;
									&lt;span class=&quot;td_label&quot;&gt;
										&lt;xsl:text&gt;Telécom&lt;/xsl:text&gt;
									&lt;/span&gt;
								&lt;/td&gt;
								&lt;td&gt;
									&lt;xsl:call-template name=&quot;show-telecom&quot;&gt;
										&lt;xsl:with-param name=&quot;telecom&quot; select=&quot;.&quot;/&gt;
									&lt;/xsl:call-template&gt;
								&lt;/td&gt;
							&lt;/tr&gt;
						&lt;/xsl:for-each&gt;
						&lt;tr&gt;
							&lt;td&gt;
								&lt;span class=&quot;td_label&quot;&gt;
									&lt;xsl:text&gt;INS&lt;/xsl:text&gt;
								&lt;/span&gt;
							&lt;/td&gt;
							&lt;td&gt;
								&lt;xsl:for-each select=&quot;n1:recordTarget/n1:patientRole/n1:id&quot;&gt;
									&lt;xsl:choose&gt;
										&lt;xsl:when test=&quot;@root = &apos;1.2.250.1.213.1.4.8&apos;&quot;&gt;
											&lt;xsl:call-template name=&quot;show-identifiant&quot;&gt;
												&lt;xsl:with-param name=&quot;id&quot; select=&quot;.&quot;/&gt;
											&lt;/xsl:call-template&gt;
											&lt;xsl:text&gt;&amp;#160;&lt;/xsl:text&gt;
											&lt;xsl:text&gt;[NIR]&lt;/xsl:text&gt;
										&lt;/xsl:when&gt;
										&lt;xsl:when test=&quot;@root = &apos;1.2.250.1.213.1.4.9&apos;&quot;&gt;
											&lt;xsl:call-template name=&quot;show-identifiant&quot;&gt;
												&lt;xsl:with-param name=&quot;id&quot; select=&quot;.&quot;/&gt;
											&lt;/xsl:call-template&gt;
											&lt;xsl:text&gt;&amp;#160;&lt;/xsl:text&gt;
											&lt;xsl:text&gt;[NIA]&lt;/xsl:text&gt;
										&lt;/xsl:when&gt;
										&lt;xsl:when test=&quot;@root = &apos;1.2.250.1.213.1.4.10&apos;&quot;&gt;
											&lt;xsl:call-template name=&quot;show-identifiant&quot;&gt;
												&lt;xsl:with-param name=&quot;id&quot; select=&quot;.&quot;/&gt;
											&lt;/xsl:call-template&gt;
											&lt;xsl:text&gt;&amp;#160;&lt;/xsl:text&gt;
											&lt;xsl:text&gt;[TEST]&lt;/xsl:text&gt;
										&lt;/xsl:when&gt;
										&lt;xsl:when test=&quot;@root = &apos;1.2.250.1.213.1.4.11&apos;&quot;&gt;
											&lt;xsl:call-template name=&quot;show-identifiant&quot;&gt;
												&lt;xsl:with-param name=&quot;id&quot; select=&quot;.&quot;/&gt;
											&lt;/xsl:call-template&gt;
											&lt;xsl:text&gt;&amp;#160;&lt;/xsl:text&gt;
											&lt;xsl:text&gt;[DEMO]&lt;/xsl:text&gt;
										&lt;/xsl:when&gt;
										&lt;xsl:otherwise&gt;
											&lt;xsl:text&gt;&amp;#160;&lt;/xsl:text&gt;
										&lt;/xsl:otherwise&gt;
									&lt;/xsl:choose&gt;
								&lt;/xsl:for-each&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
						&lt;tr&gt;
							&lt;td&gt;
								&lt;span class=&quot;td_label&quot;&gt;
									&lt;xsl:text&gt;IPP&lt;/xsl:text&gt;
								&lt;/span&gt;
							&lt;/td&gt;
							&lt;td&gt;
								&lt;xsl:for-each select=&quot;n1:recordTarget/n1:patientRole/n1:id&quot;&gt;
									&lt;xsl:if test=&quot;
											(@root != &apos;1.2.250.1.213.1.4.8&apos;) and (@root != &apos;1.2.250.1.213.1.4.9&apos;)
											and (@root != &apos;1.2.250.1.213.1.4.10&apos;) and (@root != &apos;1.2.250.1.213.1.4.11&apos;)&quot;&gt;
										&lt;xsl:call-template name=&quot;show-id&quot;&gt;
											&lt;xsl:with-param name=&quot;id&quot; select=&quot;.&quot;/&gt;
										&lt;/xsl:call-template&gt;
									&lt;/xsl:if&gt;
								&lt;/xsl:for-each&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
						&lt;tr&gt;
							&lt;td&gt;
								&lt;span class=&quot;td_label&quot;&gt;
									&lt;xsl:text&gt;Représentant du patient&lt;/xsl:text&gt;
								&lt;/span&gt;
							&lt;/td&gt;
							&lt;td&gt;
								&lt;xsl:if test=&quot;n1:recordTarget//n1:patient/n1:guardian&quot;&gt;
									&lt;xsl:for-each select=&quot;n1:recordTarget//n1:patient/n1:guardian&quot;&gt;
										&lt;xsl:call-template name=&quot;show-guardian&quot;&gt;
											&lt;xsl:with-param name=&quot;guardian&quot; select=&quot;.&quot;/&gt;
										&lt;/xsl:call-template&gt;
									&lt;/xsl:for-each&gt;
								&lt;/xsl:if&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
					&lt;/tbody&gt;
				&lt;/table&gt;"/>
											<paragraph paragraphtag="p">
												<children>
													<text fixtext=" Demande d&apos;examens "/>
													<template subtype="element" match="n1:documentationOf">
														<children>
															<template subtype="element" match="n1:serviceEvent">
																<children>
																	<template subtype="element" match="n1:id">
																		<children>
																			<template subtype="attribute" match="extension">
																				<children>
																					<content subtype="regular">
																						<properties class="data"/>
																					</content>
																				</children>
																				<variables/>
																			</template>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
														<variables/>
													</template>
													<text fixtext=" prescrite le "/>
													<calltemplate subtype="named" match="printDate">
														<parameters>
															<parameter name="date" value="n1:participant[@typeCode = &apos;REF&apos;]/n1:time/n1:high/@value"/>
														</parameters>
													</calltemplate>
													<text fixtext=" par "/>
													<calltemplate subtype="named" match="printNameAndId">
														<parameters>
															<parameter name="ref" value="n1:participant[@typeCode = &apos;REF&apos;]/n1:associatedEntity"/>
														</parameters>
													</calltemplate>
													<newline/>
													<text fixtext=" Echantillons biologiques prélevés le "/>
													<calltemplate subtype="named" match="printDate">
														<parameters>
															<parameter name="date" value="n1:participant[@typeCode = &apos;PRF&apos;]/n1:time/n1:high/@value"/>
														</parameters>
													</calltemplate>
													<text fixtext=" par "/>
													<calltemplate subtype="named" match="printNameAndId">
														<parameters>
															<parameter name="ref" value="n1:participant[@typeCode = &apos;PRF&apos;]/n1:associatedEntity"/>
														</parameters>
													</calltemplate>
													<newline/>
													<text fixtext=" Examens réalisés du "/>
													<calltemplate subtype="named" match="printDate">
														<parameters>
															<parameter name="date" value="n1:documentationOf/n1:serviceEvent/n1:effectiveTime/n1:low/@value"/>
														</parameters>
													</calltemplate>
													<text fixtext=" au "/>
													<calltemplate subtype="named" match="printDate">
														<parameters>
															<parameter name="date" value="n1:documentationOf/n1:serviceEvent/n1:effectiveTime/n1:high/@value"/>
														</parameters>
													</calltemplate>
												</children>
											</paragraph>
											<template subtype="element" match="n1:component">
												<children>
													<template subtype="element" match="n1:structuredBody">
														<children>
															<userxmltext text="&lt;xsl:apply-templates select=&quot;.&quot; /&gt;"/>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
											<newline/>
											<userxmltext text="&lt;table&gt;
					&lt;tr&gt;
						&lt;th&gt;Biologistes médicaux ayant participé à l&apos;interprétation du compte
							rendu&lt;/th&gt;
						&lt;th&gt;Date &amp;amp; heure&lt;/th&gt;
					&lt;/tr&gt;

					&lt;xsl:for-each select=&quot;n1:authenticator&quot;&gt;
						&lt;tr&gt;
							&lt;td&gt;
								&lt;xsl:call-template name=&quot;printNameAndId&quot;&gt;
									&lt;xsl:with-param name=&quot;ref&quot; select=&quot;n1:assignedEntity&quot;/&gt;
								&lt;/xsl:call-template&gt;

							&lt;/td&gt;
							&lt;td&gt;
								&lt;xsl:call-template name=&quot;printDateAndTime&quot;&gt;
									&lt;xsl:with-param name=&quot;date&quot; select=&quot;n1:time/@value&quot;/&gt;
								&lt;/xsl:call-template&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
					&lt;/xsl:for-each&gt;
					&lt;xsl:if test=&quot;not(n1:authenticator/n1:assignedEntity)&quot;&gt;
						&lt;tr&gt;
							&lt;td&gt;
								&lt;xsl:call-template name=&quot;printNameAndId&quot;&gt;
									&lt;xsl:with-param name=&quot;ref&quot;
										select=&quot;n1:legalAuthenticator/n1:assignedEntity&quot;/&gt;
								&lt;/xsl:call-template&gt;
							&lt;/td&gt;
							&lt;td&gt;
								&lt;xsl:call-template name=&quot;printDateAndTime&quot;&gt;
									&lt;xsl:with-param name=&quot;date&quot;
										select=&quot;n1:legalAuthenticator/n1:time/@value&quot;/&gt;
								&lt;/xsl:call-template&gt;
							&lt;/td&gt;
						&lt;/tr&gt;
					&lt;/xsl:if&gt;
					&lt;tr&gt;
						&lt;td&gt;
							&lt;xsl:call-template name=&quot;directeur_signe&quot;/&gt;
						&lt;/td&gt;
					&lt;/tr&gt;
				&lt;/table&gt;"/>
										</children>
									</userxmlelem>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="userdefined" match="n1:component/n1:structuredBody">
				<children>
					<template subtype="userdefined" match="n1:component/n1:structuredBody">
						<children>
							<paragraph>
								<children>
									<template subtype="element" match="n1:component">
										<children>
											<template subtype="element" match="n1:section">
												<children>
													<calltemplate subtype="named" match="section">
														<parameters/>
													</calltemplate>
												</children>
												<variables/>
											</template>
										</children>
										<variables/>
									</template>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:paragraph">
				<children>
					<template subtype="element" match="n1:paragraph">
						<children>
							<paragraph>
								<children>
									<paragraph paragraphtag="p">
										<children>
											<content subtype="regular"/>
										</children>
									</paragraph>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:pre">
				<children>
					<template subtype="element" match="n1:pre">
						<children>
							<paragraph>
								<children>
									<paragraph paragraphtag="pre">
										<children>
											<content subtype="regular"/>
										</children>
									</paragraph>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="userdefined" match="n1:content[@revised = &apos;delete&apos;]">
				<children>
					<template subtype="userdefined" match="n1:content[@revised = &apos;delete&apos;]">
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:content">
				<children>
					<template subtype="element" match="n1:content">
						<children>
							<paragraph>
								<children>
									<content subtype="regular"/>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:br">
				<children>
					<template subtype="element" match="n1:br">
						<children>
							<paragraph>
								<children>
									<newline/>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:list">
				<children>
					<template subtype="element" match="n1:list">
						<children>
							<paragraph>
								<children>
									<condition>
										<children>
											<conditionbranch xpath="n1:caption">
												<children>
													<paragraph paragraphtag="p">
														<children>
															<calltemplate subtype="element" match="n1:caption">
																<styles font-weight="bold"/>
															</calltemplate>
														</children>
													</paragraph>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<list>
										<children>
											<template subtype="element" match="n1:item">
												<children>
													<userxmlelem openingtagtext="li">
														<children>
															<content subtype="regular"/>
														</children>
													</userxmlelem>
												</children>
												<variables/>
											</template>
										</children>
									</list>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="userdefined" match="n1:list[@listType = &apos;ordered&apos;]">
				<children>
					<template subtype="userdefined" match="n1:list[@listType = &apos;ordered&apos;]">
						<children>
							<paragraph>
								<children>
									<condition>
										<children>
											<conditionbranch xpath="n1:caption">
												<children>
													<calltemplate subtype="element" match="n1:caption">
														<styles font-weight="bold"/>
													</calltemplate>
												</children>
											</conditionbranch>
										</children>
									</condition>
									<list ordered="1">
										<children>
											<template subtype="element" match="n1:item">
												<children>
													<userxmlelem openingtagtext="li">
														<children>
															<content subtype="regular"/>
														</children>
													</userxmlelem>
												</children>
												<variables/>
											</template>
										</children>
									</list>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:caption">
				<children>
					<template subtype="element" match="n1:caption">
						<children>
							<paragraph>
								<children>
									<content subtype="regular"/>
									<text fixtext=": "/>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="userdefined" match="n1:table/@* | n1:thead/@* | n1:tfoot/@* | n1:tbody/@* | n1:colgroup/@* | n1:col/@* | n1:tr/@* | n1:th/@* | n1:td/@*">
				<children>
					<template subtype="userdefined" match="n1:table/@* | n1:thead/@* | n1:tfoot/@* | n1:tbody/@* | n1:colgroup/@* | n1:col/@* | n1:tr/@* | n1:th/@* | n1:td/@*">
						<children>
							<paragraph/>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:table">
				<children>
					<template subtype="element" match="n1:table">
						<children>
							<paragraph>
								<children>
									<tgrid tablegen-filter-periods-to-month="12" tablegen-filter-periods-to-day="31">
										<properties class="table"/>
										<children>
											<tgridbody-cols/>
											<tgridbody-rows/>
										</children>
										<wizard-data-repeat>
											<children/>
										</wizard-data-repeat>
										<wizard-data-rows>
											<children/>
										</wizard-data-rows>
										<wizard-data-columns>
											<children/>
										</wizard-data-columns>
									</tgrid>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:thead">
				<children>
					<template subtype="element" match="n1:thead">
						<children>
							<paragraph>
								<children>
									<userxmlelem openingtagtext="thead">
										<children>
											<content subtype="regular"/>
										</children>
									</userxmlelem>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:tfoot">
				<children>
					<template subtype="element" match="n1:tfoot">
						<children>
							<paragraph>
								<children>
									<userxmlelem openingtagtext="tfoot">
										<children>
											<content subtype="regular"/>
										</children>
									</userxmlelem>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:tbody">
				<children>
					<template subtype="element" match="n1:tbody">
						<children>
							<paragraph>
								<children>
									<userxmlelem openingtagtext="tbody">
										<children>
											<content subtype="regular"/>
										</children>
									</userxmlelem>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:colgroup">
				<children>
					<template subtype="element" match="n1:colgroup">
						<children>
							<paragraph>
								<children>
									<userxmlelem openingtagtext="colgroup">
										<children>
											<content subtype="regular"/>
										</children>
									</userxmlelem>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:col">
				<children>
					<template subtype="element" match="n1:col">
						<children>
							<paragraph/>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:tr">
				<children>
					<template subtype="element" match="n1:tr">
						<children>
							<paragraph>
								<children>
									<userxmlelem openingtagtext="tr class=&quot;tr&quot;">
										<children>
											<content subtype="regular"/>
										</children>
									</userxmlelem>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:th">
				<children>
					<template subtype="element" match="n1:th">
						<children>
							<paragraph>
								<children>
									<userxmlelem openingtagtext="th class=&quot;th&quot;">
										<children>
											<content subtype="regular"/>
										</children>
									</userxmlelem>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:td">
				<children>
					<template subtype="element" match="n1:td">
						<children>
							<paragraph>
								<children>
									<userxmlelem openingtagtext="td">
										<children>
											<condition>
												<children>
													<conditionbranch xpath="@styleCode = &apos;Bold&apos;">
														<children>
															<content subtype="regular">
																<styles font-weight="bold"/>
															</content>
														</children>
													</conditionbranch>
													<conditionbranch xpath="@styleCode = &apos;Italics&apos;">
														<children>
															<content subtype="regular">
																<styles font-style="italic"/>
															</content>
														</children>
													</conditionbranch>
													<conditionbranch xpath="@styleCode = &apos;Underline&apos;">
														<children>
															<content subtype="regular">
																<styles text-decoration="underline"/>
															</content>
														</children>
													</conditionbranch>
													<conditionbranch>
														<children>
															<content subtype="regular"/>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</userxmlelem>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="userdefined" match="n1:table/n1:caption">
				<children>
					<template subtype="userdefined" match="n1:table/n1:caption">
						<children>
							<paragraph>
								<children>
									<content subtype="regular">
										<styles font-weight="bold"/>
									</content>
								</children>
							</paragraph>
						</children>
						<variables/>
					</template>
				</children>
			</globaltemplate>
			<globaltemplate subtype="element" match="n1:renderMultiMedia">
				<children>
					<template subtype="element" match="n1:renderMultiMedia">
						<children>
							<paragraph>
								<children>
									<condition>
										<children>
											<conditionbranch xpath="//n1:regionOfInterest[@ID = $imageRef]">
												<children>
													<condition>
														<children>
															<conditionbranch xpath="        //n1:regionOfInterest[@ID = $imageRef]//n1:observationMedia/n1:value[@mediaType = &apos;image/gif&apos; or        @mediaType = &apos;image/jpeg&apos; or @mediaType = &apos;image/png&apos;]">
																<children>
																	<newline/>
																	<image>
																		<properties src="{//n1:regionOfInterest[@ID = $imageRef]//n1:observationMedia/n1:value/n1:reference/@value}"/>
																		<target>
																			<xpath value="//n1:regionOfInterest[@ID = $imageRef]//n1:observationMedia/n1:value/n1:reference/@value"/>
																		</target>
																	</image>
																</children>
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="//n1:regionOfInterest[@ID = $imageRef]//n1:observationMedia/n1:value[@mediaType = &apos;text/xml&apos; or @mediaType = &apos;application/pdf&apos;]">
																<children>
																	<newline/>
																	<paragraph paragraphtag="p">
																		<children>
																			<template subtype="userdefined" match="//n1:regionOfInterest[@ID = $imageRef]//n1:observationMedia">
																				<children>
																					<template subtype="element" match="n1:value">
																						<children>
																							<template subtype="element" match="n1:reference">
																								<children>
																									<template subtype="attribute" match="value">
																										<children>
																											<content subtype="regular"/>
																										</children>
																										<variables/>
																									</template>
																								</children>
																								<variables/>
																							</template>
																						</children>
																						<variables/>
																					</template>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</paragraph>
																</children>
															</conditionbranch>
														</children>
													</condition>
												</children>
											</conditionbranch>
											<conditionbranch>
												<children>
													<condition>
														<children>
															<conditionbranch xpath="//n1:observationMedia[@ID = $imageRef]/n1:value[@mediaType = &apos;image/gif&apos; or @mediaType = &apos;image/jpeg&apos; or @mediaType = &apos;image/png&apos;]">
																<children>
																	<newline/>
																	<image>
																		<properties id="{$imageRef}" src="data:;base64, "/>
																		<target>
																			<fixtext value="data:;base64, "/>
																		</target>
																	</image>
																</children>
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="//n1:observationMedia[@ID = $imageRef]/n1:value[@mediaType = &apos;text/xml&apos;]">
																<children>
																	<newline/>
																	<condition>
																		<children>
																			<conditionbranch xpath="$vendor = &apos;libxslt&apos; and $node-set">
																				<children>
																					<userxmlelem openingtagtext="xsl:element name=&quot;object&quot;"/>
																				</children>
																			</conditionbranch>
																			<conditionbranch xpath="$vendor = &apos;Transformiix&apos; and $node-set">
																				<children>
																					<userxmlelem openingtagtext="xsl:element name=&quot;object&quot;"/>
																				</children>
																			</conditionbranch>
																			<conditionbranch>
																				<children>
																					<text fixtext="Ce document contient des données (SESAM vitale) qui ne peuvent être affichées par ce navigateur."/>
																				</children>
																			</conditionbranch>
																		</children>
																	</condition>
																</children>
															</conditionbranch>
														</children>
													</condition>
													<condition>
														<children>
															<conditionbranch xpath="//n1:observationMedia[@ID = $imageRef]/n1:value[@mediaType = &apos;application/pdf&apos;]">
																<children>
																	<condition>
																		<children>
																			<conditionbranch xpath="$vendor = &apos;libxslt&apos; and $node-set">
																				<children>
																					<userxmlelem openingtagtext="xsl:element name=&quot;object&quot;"/>
																				</children>
																			</conditionbranch>
																			<conditionbranch xpath="$vendor = &apos;Transformiix&apos; and $node-set">
																				<children>
																					<userxmlelem openingtagtext="xsl:element name=&quot;object&quot;"/>
																				</children>
																			</conditionbranch>
																			<conditionbranch>
																				<children>
																					<text fixtext="Ce document contient un fichier PDF qui ne peut être affiché par ce navigateur."/>
																				</children>
																			</conditionbranch>
																		</children>
																	</condition>
																</children>
															</conditionbranch>
														</children>
													</condition>
												</children>
											</conditionbranch>
										</children>
									</condition>
								</children>
							</paragraph>
						</children>
						<variables>
							<variable name="imageRef" value="@referencedObject" valuetype="&lt;auto&gt;"/>
							<variable name="vendor" value="system-property(&apos;xsl:vendor&apos;)" valuetype="&lt;auto&gt;"/>
							<variable name="node-set" value="function-available(&apos;exsl:node-set&apos;)" valuetype="&lt;auto&gt;"/>
						</variables>
					</template>
				</children>
			</globaltemplate>
		</children>
	</globalparts>
	<designfragments>
		<children>
			<globaltemplate subtype="named" match="printNameAndId">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<autocalc xpath="$ref/n1:assignedPerson/n1:name | $ref/n1:associatedPerson/n1:name">
								<properties class="data"/>
							</autocalc>
							<text fixtext="("/>
							<template subtype="userdefined" match="$ref//n1:id">
								<children>
									<template subtype="attribute" match="extension">
										<children>
											<content subtype="regular">
												<properties class="data"/>
											</content>
										</children>
										<variables/>
									</template>
								</children>
								<variables/>
							</template>
							<text fixtext=")"/>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="printDate">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<autocalc xpath="substring($date, 7, 2)">
								<properties class="data"/>
							</autocalc>
							<text fixtext="/"/>
							<autocalc xpath="substring($date, 5, 2)">
								<properties class="data"/>
							</autocalc>
							<text fixtext="/"/>
							<autocalc xpath="substring($date, 1, 4)">
								<properties class="data"/>
							</autocalc>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="printDateAndTime">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<calltemplate subtype="named" match="printDate">
								<parameters>
									<parameter name="date" value="$date"/>
								</parameters>
							</calltemplate>
							<text fixtext=" "/>
							<autocalc xpath="substring($date, 9, 2)">
								<properties class="data"/>
							</autocalc>
							<text fixtext=":"/>
							<autocalc xpath="substring($date, 11, 2)">
								<properties class="data"/>
							</autocalc>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="printLogo">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<image>
								<properties src="data:image/jpeg;base64,    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    eW4Gc5/gNMjRo0H/2Q==    "/>
								<target>
									<fixtext value="data:image/jpeg;base64,    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    eW4Gc5/gNMjRo0H/2Q==    "/>
								</target>
							</image>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="directeur_signe">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<newline/>
							<image>
								<properties src="data:image/jpeg;base64,    iVBORw0KGgoAAAANSUhEUgAAAK8AAACvAQMAAACxXBw2AAAAB3RJTUUH2woPDAQmGYX3JgAAAAlw    SFlzAAAK8AAACvABQqw0mAAAAAZQTFRFAAAA////pdmf3QAAAShJREFUeNrtl0EOhCAMRcvKJTeC    mw16M7xRl6xgfkGNmllOITPRpEGfCwv/tyCVT1emB/8TToTLEdloC8t90Me+RiaMHGqoY0cmeXZ2    BXqRGY1LxJqsnTGE6IarDJi8KH9Xpy+uHkRyEndr6uCttjyTaH8tQCWcTBKzYfp4dZq8Ihbtp1JW    PDg7Q/8yDGM9kiRHCDhwT1ATxylPWb6PWPhQXhPXWmMDARxdZeiN4yTJwfZkMOZdBk0smTS9nc10    WRMtDJuJ2WB8U2a78ECcWo810mTsvK+JJm6NRfraVQY9XJupr1OXnSSc+7cWboeFuGVyNNMBWLZR    uG/bR177BqOPAWF6w92wr+Xt4e95IBYZcFRAclL7XXA7LADDg4ED6+Ov/CA8+NfwG147q3gE6HAP    AAAAAElFTkSuQmCC    "/>
								<target>
									<fixtext value="data:image/jpeg;base64,    iVBORw0KGgoAAAANSUhEUgAAAK8AAACvAQMAAACxXBw2AAAAB3RJTUUH2woPDAQmGYX3JgAAAAlw    SFlzAAAK8AAACvABQqw0mAAAAAZQTFRFAAAA////pdmf3QAAAShJREFUeNrtl0EOhCAMRcvKJTeC    mw16M7xRl6xgfkGNmllOITPRpEGfCwv/tyCVT1emB/8TToTLEdloC8t90Me+RiaMHGqoY0cmeXZ2    BXqRGY1LxJqsnTGE6IarDJi8KH9Xpy+uHkRyEndr6uCttjyTaH8tQCWcTBKzYfp4dZq8Ihbtp1JW    PDg7Q/8yDGM9kiRHCDhwT1ATxylPWb6PWPhQXhPXWmMDARxdZeiN4yTJwfZkMOZdBk0smTS9nc10    WRMtDJuJ2WB8U2a78ECcWo810mTsvK+JJm6NRfraVQY9XJupr1OXnSSc+7cWboeFuGVyNNMBWLZR    uG/bR177BqOPAWF6w92wr+Xt4e95IBYZcFRAclL7XXA7LADDg4ED6+Ov/CA8+NfwG147q3gE6HAP    AAAAAElFTkSuQmCC    "/>
								</target>
							</image>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="section">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<calltemplate subtype="named" match="section-title">
								<parameters>
									<parameter name="title" value="n1:title"/>
								</parameters>
							</calltemplate>
							<calltemplate subtype="named" match="section-text">
								<parameters/>
							</calltemplate>
							<template subtype="element" match="n1:component">
								<children>
									<template subtype="element" match="n1:section">
										<children>
											<calltemplate subtype="named" match="nestedSection">
												<parameters>
													<parameter name="margin" value="2"/>
												</parameters>
											</calltemplate>
										</children>
										<variables/>
									</template>
								</children>
								<variables/>
							</template>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="section-title">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<paragraph paragraphtag="h3">
								<children>
									<autocalc xpath="$title"/>
								</children>
							</paragraph>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="section-text">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<paragraph/>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="renderTextB64">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<userxmltext text="&lt;xsl:variable name=&quot;vendor&quot; select=&quot;system-property(&apos;xsl:vendor&apos;)&quot;/&gt;"/>
							<userxmltext text="&lt;xsl:variable name=&quot;node-set&quot; select=&quot;function-available(&apos;exsl:node-set&apos;)&quot;/&gt;"/>
							<condition>
								<children>
									<conditionbranch xpath="$vendor = &apos;libxslt&apos; and $node-set">
										<children>
											<userxmlelem openingtagtext="xsl:element name=&quot;object&quot;"/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$vendor = &apos;Opera&apos; and $node-set">
										<children>
											<userxmlelem openingtagtext="xsl:element name=&quot;object&quot;"/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$vendor = &apos;Transformiix&apos; and $node-set">
										<children>
											<text fixtext="Enregistrer le document PDF (clic droit &quot;puis enregistrer sous&quot;) : "/>
											<link>
												<properties href="data:;base64,"/>
												<children>
													<text fixtext="ici"/>
												</children>
												<action>
													<none/>
												</action>
												<hyperlink>
													<fixtext value="data:;base64,"/>
												</hyperlink>
											</link>
										</children>
									</conditionbranch>
									<conditionbranch>
										<children>
											<text fixtext="Ce document contient un fichier PDF qui ne peut être affiché par ce"/>
											<newline/>
											<text fixtext="					navigateur"/>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="nestedSection">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<paragraph paragraphtag="h4">
								<children>
									<template subtype="element" match="n1:title">
										<children>
											<content subtype="regular"/>
										</children>
										<variables/>
									</template>
								</children>
							</paragraph>
							<paragraph/>
							<template subtype="element" match="n1:component">
								<children>
									<template subtype="element" match="n1:section">
										<children>
											<calltemplate subtype="named" match="nestedSection">
												<parameters>
													<parameter name="margin" value="2 * $margin"/>
												</parameters>
											</calltemplate>
										</children>
										<variables/>
									</template>
								</children>
								<variables/>
							</template>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-address">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="$address">
										<children>
											<template subtype="parameter" match="$address">
												<children>
													<template subtype="element" match="n1:streetAddressLine">
														<children>
															<content subtype="regular"/>
															<newline/>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
											<condition>
												<children>
													<conditionbranch xpath="$address/n1:streetName">
														<children>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:houseNumber">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
															<text fixtext=" "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:streetNameType">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
															<text fixtext=" "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:streetName">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
															<newline/>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="string-length($address/n1:postalCode) &gt; 0">
														<children>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:postalCode">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="string-length($address/n1:city) &gt; 0">
														<children>
															<text fixtext=", "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:city">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
															<newline/>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="string-length($address/n1:state) &gt; 0">
														<children>
															<text fixtext=", "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:state">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
															<newline/>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="string-length($address/n1:country) &gt; 0">
														<children>
															<text fixtext=", "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:country">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
															<newline/>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</conditionbranch>
									<conditionbranch>
										<children>
											<text fixtext="addresse non renseignée"/>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-telecom">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="$telecom">
										<children>
											<userxmltext text="&lt;xsl:variable name=&quot;type&quot; select=&quot;substring-before($telecom/@value, &apos;:&apos;)&quot;/&gt;"/>
											<userxmltext text="&lt;xsl:variable name=&quot;value&quot; select=&quot;substring-after($telecom/@value, &apos;:&apos;)&quot;/&gt;"/>
											<condition>
												<children>
													<conditionbranch xpath="$type">
														<children>
															<calltemplate subtype="named" match="translateTelecomCode">
																<parameters>
																	<parameter name="code" value="$type"/>
																</parameters>
															</calltemplate>
															<text fixtext=": "/>
															<text fixtext=" "/>
															<autocalc xpath="$value"/>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</conditionbranch>
									<conditionbranch>
										<children>
											<text fixtext="Coordonnées téléphoniques non renseignées"/>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="translateTelecomCode">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="$code = &apos;tel&apos;">
										<children>
											<text fixtext="Tél"/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$code = &apos;fax&apos;">
										<children>
											<text fixtext="Fax"/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$code = &apos;http&apos;">
										<children>
											<text fixtext="Page Web"/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$code = &apos;mailto&apos;">
										<children>
											<text fixtext="e-mail"/>
										</children>
									</conditionbranch>
									<conditionbranch>
										<children>
											<text fixtext="{$code=&apos;"/>
											<autocalc xpath="$code"/>
											<text fixtext="&apos;?}"/>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="formatDateTime">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="substring($date, 7, 1) = &quot;0&quot;">
										<children>
											<autocalc xpath="substring($date, 8, 1)"/>
											<text fixtext=" "/>
										</children>
									</conditionbranch>
									<conditionbranch>
										<children>
											<autocalc xpath="substring($date, 7, 2)"/>
											<text fixtext=" "/>
										</children>
									</conditionbranch>
								</children>
							</condition>
							<userxmltext text="&lt;xsl:variable name=&quot;month&quot; select=&quot;substring($date, 5, 2)&quot;/&gt;"/>
							<condition>
								<children>
									<conditionbranch xpath="$month = &apos;01&apos;">
										<children>
											<text fixtext="Janvier "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;02&apos;">
										<children>
											<text fixtext="Février "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;03&apos;">
										<children>
											<text fixtext="Mars "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;04&apos;">
										<children>
											<text fixtext="Avril "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;05&apos;">
										<children>
											<text fixtext="Mai "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;06&apos;">
										<children>
											<text fixtext="Juin "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;07&apos;">
										<children>
											<text fixtext="Juillet "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;08&apos;">
										<children>
											<text fixtext="Août "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;09&apos;">
										<children>
											<text fixtext="Septembre "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;10&apos;">
										<children>
											<text fixtext="Octobre "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;11&apos;">
										<children>
											<text fixtext="Novembre "/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="$month = &apos;12&apos;">
										<children>
											<text fixtext="Décembre "/>
										</children>
									</conditionbranch>
								</children>
							</condition>
							<autocalc xpath="substring($date, 1, 4)"/>
							<condition>
								<children>
									<conditionbranch xpath="string-length($date) &gt; 8">
										<children>
											<text fixtext=", "/>
											<userxmltext text="&lt;xsl:variable name=&quot;time&quot;&gt;
					&lt;xsl:value-of select=&quot;substring($date, 9, 6)&quot;/&gt;
				&lt;/xsl:variable&gt;"/>
											<userxmltext text="&lt;xsl:variable name=&quot;hh&quot;&gt;
					&lt;xsl:value-of select=&quot;substring($time, 1, 2)&quot;/&gt;
				&lt;/xsl:variable&gt;"/>
											<userxmltext text="&lt;xsl:variable name=&quot;mm&quot;&gt;
					&lt;xsl:value-of select=&quot;substring($time, 3, 2)&quot;/&gt;
				&lt;/xsl:variable&gt;"/>
											<userxmltext text="&lt;xsl:variable name=&quot;ss&quot;&gt;
					&lt;xsl:value-of select=&quot;substring($time, 5, 2)&quot;/&gt;
				&lt;/xsl:variable&gt;"/>
											<condition>
												<children>
													<conditionbranch xpath="string-length($hh) &gt; 1">
														<children>
															<autocalc xpath="$hh"/>
															<condition>
																<children>
																	<conditionbranch xpath="string-length($mm) &gt; 1 and not(contains($mm, &apos;-&apos;)) and not(contains($mm, &apos;+&apos;))">
																		<children>
																			<text fixtext=":"/>
																			<autocalc xpath="$mm"/>
																			<condition>
																				<children>
																					<conditionbranch xpath="string-length($ss) &gt; 1 and not(contains($ss, &apos;-&apos;)) and not(contains($ss, &apos;+&apos;))">
																						<children>
																							<text fixtext=":"/>
																							<autocalc xpath="$ss"/>
																						</children>
																					</conditionbranch>
																				</children>
																			</condition>
																		</children>
																	</conditionbranch>
																</children>
															</condition>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<userxmltext text="&lt;xsl:variable name=&quot;tzon&quot;&gt;
					&lt;xsl:choose&gt;
						&lt;xsl:when test=&quot;contains($date, &apos;+&apos;)&quot;&gt;
							&lt;xsl:text&gt;+&lt;/xsl:text&gt;
							&lt;xsl:value-of select=&quot;substring-after($date, &apos;+&apos;)&quot;/&gt;
						&lt;/xsl:when&gt;
						&lt;xsl:when test=&quot;contains($date, &apos;-&apos;)&quot;&gt;
							&lt;xsl:text&gt;-&lt;/xsl:text&gt;
							&lt;xsl:value-of select=&quot;substring-after($date, &apos;-&apos;)&quot;/&gt;
						&lt;/xsl:when&gt;
					&lt;/xsl:choose&gt;
				&lt;/xsl:variable&gt;"/>
											<condition>
												<children>
													<conditionbranch xpath="$tzon = &apos;-0500&apos;">
														<children>
															<text fixtext=", EST"/>
														</children>
													</conditionbranch>
													<conditionbranch xpath="$tzon = &apos;-0600&apos;">
														<children>
															<text fixtext=", CST"/>
														</children>
													</conditionbranch>
													<conditionbranch xpath="$tzon = &apos;-0700&apos;">
														<children>
															<text fixtext=", MST"/>
														</children>
													</conditionbranch>
													<conditionbranch xpath="$tzon = &apos;-0800&apos;">
														<children>
															<text fixtext=", PST"/>
														</children>
													</conditionbranch>
													<conditionbranch>
														<children>
															<text fixtext=" "/>
															<autocalc xpath="$tzon"/>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-name">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="$name/n1:family">
										<children>
											<condition>
												<children>
													<conditionbranch xpath="$name/n1:suffix">
														<children>
															<template subtype="parameter" match="$name">
																<children>
																	<template subtype="element" match="n1:suffix">
																		<children>
																			<content subtype="regular">
																				<styles font-weight="bold"/>
																			</content>
																			<text fixtext=" "/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
													<conditionbranch>
														<children>
															<template subtype="parameter" match="$name">
																<children>
																	<template subtype="element" match="n1:prefix">
																		<children>
																			<content subtype="regular">
																				<styles font-weight="bold"/>
																			</content>
																			<text fixtext=" "/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<template subtype="parameter" match="$name">
												<children>
													<template subtype="element" match="n1:given">
														<children>
															<content subtype="regular">
																<styles font-weight="bold"/>
															</content>
															<text fixtext=" ">
																<styles font-weight="bold"/>
															</text>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
											<template subtype="parameter" match="$name">
												<children>
													<template subtype="element" match="n1:family">
														<children>
															<content subtype="regular">
																<styles font-weight="bold"/>
															</content>
															<condition>
																<children>
																	<conditionbranch xpath="@qualifier">
																		<children>
																			<condition>
																				<children>
																					<conditionbranch xpath="@qualifier = &apos;BR&apos;">
																						<children>
																							<text fixtext=" (Nom de famille) "/>
																						</children>
																					</conditionbranch>
																					<conditionbranch xpath="@qualifier = &apos;SP&apos;">
																						<children>
																							<text fixtext=" (Nom d&apos;usage) "/>
																						</children>
																					</conditionbranch>
																					<conditionbranch>
																						<children>
																							<template subtype="attribute" match="qualifier">
																								<children>
																									<content subtype="regular"/>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</conditionbranch>
																				</children>
																			</condition>
																		</children>
																	</conditionbranch>
																</children>
															</condition>
															<text fixtext=" "/>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
										</children>
									</conditionbranch>
									<conditionbranch>
										<children>
											<autocalc xpath="$name">
												<styles font-weight="bold"/>
											</autocalc>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-gender">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="@code = &apos;M&apos;">
										<children>
											<text fixtext="Masculin"/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="@code = &apos;F&apos;">
										<children>
											<text fixtext="Féminin"/>
										</children>
									</conditionbranch>
									<conditionbranch xpath="@code = &apos;U&apos;">
										<children>
											<text fixtext="Inconnu"/>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-address-city">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="$address">
										<children>
											<condition>
												<children>
													<conditionbranch xpath="$address/@use">
														<children>
															<text fixtext=" "/>
															<calltemplate subtype="named" match="translateTelecomCode">
																<parameters>
																	<parameter name="code" value="$address/@use"/>
																</parameters>
															</calltemplate>
															<text fixtext=":"/>
															<newline/>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="string-length($address/n1:city) &gt; 0">
														<children>
															<text fixtext=" "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:city">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-address-county">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="$address">
										<children>
											<condition>
												<children>
													<conditionbranch xpath="$address/@use">
														<children>
															<text fixtext=" "/>
															<calltemplate subtype="named" match="translateTelecomCode">
																<parameters>
																	<parameter name="code" value="$address/@use"/>
																</parameters>
															</calltemplate>
															<text fixtext=":"/>
															<newline/>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="string-length($address/n1:county) &gt; 0">
														<children>
															<text fixtext=" "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:county">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-identifiant">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="not($id)">
										<children>
											<condition>
												<children>
													<conditionbranch xpath="not(@nullFlavor)">
														<children>
															<condition>
																<children>
																	<conditionbranch xpath="@extension">
																		<children>
																			<template subtype="attribute" match="extension">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</conditionbranch>
																</children>
															</condition>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</conditionbranch>
									<conditionbranch>
										<children>
											<condition>
												<children>
													<conditionbranch xpath="not($id/@nullFlavor)">
														<children>
															<condition>
																<children>
																	<conditionbranch xpath="$id/@extension">
																		<children>
																			<template subtype="parameter" match="$id">
																				<children>
																					<template subtype="attribute" match="extension">
																						<children>
																							<content subtype="regular"/>
																						</children>
																						<variables/>
																					</template>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</conditionbranch>
																</children>
															</condition>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-id">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="not($id)">
										<children>
											<condition>
												<children>
													<conditionbranch xpath="not(@nullFlavor)">
														<children>
															<condition>
																<children>
																	<conditionbranch xpath="@extension">
																		<children>
																			<template subtype="attribute" match="extension">
																				<children>
																					<content subtype="regular"/>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</conditionbranch>
																</children>
															</condition>
															<text fixtext=" ["/>
															<template subtype="attribute" match="root">
																<children>
																	<content subtype="regular"/>
																</children>
																<variables/>
															</template>
															<text fixtext="]"/>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</conditionbranch>
									<conditionbranch>
										<children>
											<condition>
												<children>
													<conditionbranch xpath="not($id/@nullFlavor)">
														<children>
															<condition>
																<children>
																	<conditionbranch xpath="$id/@extension">
																		<children>
																			<template subtype="parameter" match="$id">
																				<children>
																					<template subtype="attribute" match="extension">
																						<children>
																							<content subtype="regular"/>
																						</children>
																						<variables/>
																					</template>
																				</children>
																				<variables/>
																			</template>
																		</children>
																	</conditionbranch>
																</children>
															</condition>
															<text fixtext=" ["/>
															<template subtype="parameter" match="$id">
																<children>
																	<template subtype="attribute" match="root">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
															<text fixtext="]"/>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-guardian">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<newline/>
							<template subtype="parameter" match="$guardian">
								<children>
									<template subtype="element" match="n1:guardianPerson">
										<children>
											<calltemplate subtype="named" match="show-name">
												<parameters>
													<parameter name="name" value="."/>
												</parameters>
											</calltemplate>
											<newline/>
											<template subtype="parameter" match="$guardian">
												<children>
													<template subtype="element" match="n1:addr">
														<children>
															<calltemplate subtype="named" match="show-address-patient">
																<parameters>
																	<parameter name="address" value="."/>
																</parameters>
															</calltemplate>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
											<newline/>
											<template subtype="parameter" match="$guardian">
												<children>
													<template subtype="element" match="n1:telecom">
														<children>
															<calltemplate subtype="named" match="show-telecom">
																<parameters>
																	<parameter name="telecom" value="."/>
																</parameters>
															</calltemplate>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
											<newline/>
										</children>
										<variables/>
									</template>
								</children>
								<variables/>
							</template>
							<template subtype="parameter" match="$guardian">
								<children>
									<template subtype="element" match="n1:guardianOrganization">
										<children>
											<calltemplate subtype="named" match="show-name">
												<parameters>
													<parameter name="name" value="."/>
												</parameters>
											</calltemplate>
											<newline/>
											<template subtype="parameter" match="$guardian">
												<children>
													<template subtype="element" match="n1:addr">
														<children>
															<calltemplate subtype="named" match="show-address-patient">
																<parameters>
																	<parameter name="address" value="."/>
																</parameters>
															</calltemplate>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
											<newline/>
											<template subtype="parameter" match="$guardian">
												<children>
													<template subtype="element" match="n1:telecom">
														<children>
															<calltemplate subtype="named" match="show-telecom">
																<parameters>
																	<parameter name="telecom" value="."/>
																</parameters>
															</calltemplate>
															<newline/>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
										</children>
										<variables/>
									</template>
								</children>
								<variables/>
							</template>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-address-patient">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="$address">
										<children>
											<template subtype="parameter" match="$address">
												<children>
													<template subtype="element" match="n1:streetAddressLine">
														<children>
															<content subtype="regular"/>
														</children>
														<variables/>
													</template>
												</children>
												<variables/>
											</template>
											<condition>
												<children>
													<conditionbranch xpath="$address/n1:streetName">
														<children>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:houseNumber">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
															<text fixtext=" "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:streetNameType">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
															<text fixtext=" "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:streetName">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="string-length($address/n1:postalCode) &gt; 0">
														<children>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:postalCode">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="string-length($address/n1:city) &gt; 0">
														<children>
															<text fixtext=", "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:city">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="string-length($address/n1:state) &gt; 0">
														<children>
															<text fixtext=", "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:state">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
											<condition>
												<children>
													<conditionbranch xpath="string-length($address/n1:country) &gt; 0">
														<children>
															<text fixtext=", "/>
															<template subtype="parameter" match="$address">
																<children>
																	<template subtype="element" match="n1:country">
																		<children>
																			<content subtype="regular"/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
									</conditionbranch>
									<conditionbranch>
										<children>
											<text fixtext="addresse non renseignée"/>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-patient-name">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="$name/n1:prefix">
										<children>
											<userxmlelem openingtagtext="tr">
												<children>
													<userxmlelem openingtagtext="td width=&quot;20%&quot;">
														<children>
															<text fixtext="Civilité">
																<properties class="td_label"/>
															</text>
														</children>
													</userxmlelem>
													<userxmlelem openingtagtext="td colspan=&quot;3&quot;">
														<children>
															<template subtype="parameter" match="$name">
																<children>
																	<template subtype="element" match="n1:prefix">
																		<children>
																			<content subtype="regular"/>
																			<newline/>
																		</children>
																		<variables/>
																	</template>
																</children>
																<variables/>
															</template>
														</children>
													</userxmlelem>
												</children>
											</userxmlelem>
										</children>
									</conditionbranch>
								</children>
							</condition>
							<template subtype="parameter" match="$name">
								<children>
									<template subtype="element" match="n1:family">
										<children>
											<condition>
												<children>
													<conditionbranch xpath="@qualifier">
														<children>
															<condition>
																<children>
																	<conditionbranch xpath="@qualifier = &apos;BR&apos;">
																		<children>
																			<userxmlelem openingtagtext="tr">
																				<children>
																					<userxmlelem openingtagtext="td width=&quot;20%&quot;">
																						<children>
																							<text fixtext="Nom de naissance">
																								<properties class="td_label"/>
																							</text>
																						</children>
																					</userxmlelem>
																					<userxmlelem openingtagtext="td colspan=&quot;3&quot;">
																						<children>
																							<content subtype="regular">
																								<styles font-weight="bold"/>
																							</content>
																						</children>
																					</userxmlelem>
																				</children>
																			</userxmlelem>
																			<userxmlelem openingtagtext="tr">
																				<children>
																					<userxmlelem openingtagtext="td width=&quot;20%&quot;">
																						<children>
																							<text fixtext="Prénom(s)">
																								<properties class="td_label"/>
																							</text>
																						</children>
																					</userxmlelem>
																					<userxmlelem openingtagtext="td colspan=&quot;3&quot;">
																						<children>
																							<template subtype="parameter" match="$name">
																								<children>
																									<template subtype="element" match="n1:given">
																										<children>
																											<condition>
																												<children>
																													<conditionbranch xpath="@qualifier = &apos;BR&apos;">
																														<children>
																															<content subtype="regular">
																																<styles font-weight="bold"/>
																															</content>
																														</children>
																													</conditionbranch>
																													<conditionbranch>
																														<children>
																															<content subtype="regular"/>
																														</children>
																													</conditionbranch>
																												</children>
																											</condition>
																											<condition>
																												<children>
																													<conditionbranch xpath="$count &gt; 1">
																														<children>
																															<condition>
																																<children>
																																	<conditionbranch xpath="(position() != last()) and (position() &gt; 1)">
																																		<children>
																																			<text fixtext=", "/>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() = 1">
																																		<children>
																																			<text fixtext=" ["/>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																															<condition>
																																<children>
																																	<conditionbranch xpath="position() = last()">
																																		<children>
																																			<text fixtext="]"/>
																																		</children>
																																	</conditionbranch>
																																</children>
																															</condition>
																														</children>
																													</conditionbranch>
																												</children>
																											</condition>
																										</children>
																										<variables/>
																									</template>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</userxmlelem>
																				</children>
																			</userxmlelem>
																		</children>
																	</conditionbranch>
																	<conditionbranch xpath="@qualifier = &apos;SP&apos;">
																		<children>
																			<userxmlelem openingtagtext="tr">
																				<children>
																					<userxmlelem openingtagtext="td width=&quot;20%&quot;">
																						<children>
																							<text fixtext="Nom d&apos;usage">
																								<properties class="td_label"/>
																							</text>
																						</children>
																					</userxmlelem>
																					<userxmlelem openingtagtext="td colspan=&quot;3&quot;">
																						<children>
																							<content subtype="regular"/>
																						</children>
																					</userxmlelem>
																				</children>
																			</userxmlelem>
																		</children>
																	</conditionbranch>
																	<conditionbranch xpath="@qualifier = &apos;CL&apos;">
																		<children>
																			<userxmlelem openingtagtext="tr">
																				<children>
																					<userxmlelem openingtagtext="td width=&quot;20%&quot;">
																						<children>
																							<text fixtext="Nom et prénom utilisés">
																								<properties class="td_label"/>
																							</text>
																						</children>
																					</userxmlelem>
																					<userxmlelem openingtagtext="td colspan=&quot;3&quot;">
																						<children>
																							<content subtype="regular">
																								<styles font-weight="bold"/>
																							</content>
																							<text fixtext=" ">
																								<styles font-weight="bold"/>
																							</text>
																							<template subtype="parameter" match="$name">
																								<children>
																									<template subtype="element" match="n1:given">
																										<children>
																											<condition>
																												<children>
																													<conditionbranch xpath="@qualifier = &apos;CL&apos;">
																														<children>
																															<content subtype="regular">
																																<styles font-weight="bold"/>
																															</content>
																														</children>
																													</conditionbranch>
																												</children>
																											</condition>
																											<text fixtext=" ">
																												<styles font-weight="bold"/>
																											</text>
																										</children>
																										<variables/>
																									</template>
																								</children>
																								<variables/>
																							</template>
																						</children>
																					</userxmlelem>
																				</children>
																			</userxmlelem>
																		</children>
																	</conditionbranch>
																</children>
															</condition>
														</children>
													</conditionbranch>
													<conditionbranch>
														<children>
															<userxmlelem openingtagtext="tr">
																<children>
																	<userxmlelem openingtagtext="td width=&quot;20%&quot;">
																		<children>
																			<text fixtext="Nom">
																				<properties class="td_label"/>
																			</text>
																		</children>
																	</userxmlelem>
																	<userxmlelem openingtagtext="td colspan=&quot;3&quot;">
																		<children>
																			<content subtype="regular"/>
																		</children>
																	</userxmlelem>
																</children>
															</userxmlelem>
														</children>
													</conditionbranch>
												</children>
											</condition>
										</children>
										<variables>
											<variable name="count" value="count($name/n1:given)" valuetype="&lt;auto&gt;"/>
										</variables>
									</template>
								</children>
								<variables/>
							</template>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
			<globaltemplate subtype="named" match="show-time">
				<parameters/>
				<children>
					<paragraph>
						<children>
							<condition>
								<children>
									<conditionbranch xpath="not($datetime)">
										<children>
											<calltemplate subtype="named" match="formatDateTime">
												<parameters>
													<parameter name="date" value="@value"/>
												</parameters>
											</calltemplate>
											<text fixtext=" "/>
										</children>
									</conditionbranch>
									<conditionbranch>
										<children>
											<calltemplate subtype="named" match="formatDateTime">
												<parameters>
													<parameter name="date" value="$datetime/@value"/>
												</parameters>
											</calltemplate>
											<text fixtext=" "/>
										</children>
									</conditionbranch>
								</children>
							</condition>
						</children>
					</paragraph>
				</children>
			</globaltemplate>
		</children>
	</designfragments>
	<xmltables/>
	<authentic-custom-toolbar-buttons/>
</structure>
