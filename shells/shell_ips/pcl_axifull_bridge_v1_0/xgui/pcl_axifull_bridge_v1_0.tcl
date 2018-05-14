# Definitional proc to organize widgets for parameters.
proc init_gui { IPINST } {
  #Adding Page
  set Page_0 [ipgui::add_page $IPINST -name "Page 0"]
  set_property tooltip {Page 0} ${Page_0}
  ipgui::add_param $IPINST -name "Component_Name" -parent ${Page_0}
  ipgui::add_param $IPINST -name "DATA_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "ADDR_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "M_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "S_ID_WIDTH" -parent ${Page_0}
  ipgui::add_param $IPINST -name "HAS_SLAVE_ID" -parent ${Page_0}

}

