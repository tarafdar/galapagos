create_project sample packageForNariman/ -part xcku115-flva1517-2-e
        
set_property  ip_repo_paths  {./hlsIP_adm-8k5} [current_project]
update_ip_catalog

create_bd_design sample_bd 
