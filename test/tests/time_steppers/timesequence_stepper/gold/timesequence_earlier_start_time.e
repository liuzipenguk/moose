CDF      
      
len_string     !   len_line   Q   four      	time_step          len_name   !   num_dim       	num_nodes         num_elem      
num_el_blk        num_node_sets         num_side_sets         num_el_in_blk1        num_nod_per_el1    	   num_side_ss1      num_side_ss2      num_side_ss3      num_side_ss4      num_nod_ns1       num_nod_ns2       num_nod_ns3       num_nod_ns4       num_nod_var       num_info  '         api_version       @�
=   version       @�
=   floating_point_word_size            	file_size               int64_status             title         timeknot_earlier_start_time.e      maximum_name_length                    
time_whole                            k    	eb_status                             �   eb_prop1               name      ID              �   	ns_status         	                    �   ns_prop1      	         name      ID              �   	ss_status         
                    �   ss_prop1      
         name      ID              	    coordx                      �      	   coordy                      �      	�   eb_names                       $      
�   ns_names      	                 �      
�   ss_names      
                 �      H   
coor_names                         D      �   node_num_map                    d         connect1                  	elem_type         QUAD9         �      t   elem_num_map                             elem_ss1                             side_ss1                             elem_ss2                          $   side_ss2                          ,   elem_ss3                          4   side_ss3                          <   elem_ss4                          D   side_ss4                          L   node_ns1                          T   node_ns2                          h   node_ns3                          |   node_ns4                          �   vals_nod_var1                          �      k(   name_nod_var                       $      �   info_records                      ]X      �                                                         ��                      ��      ��              ��      ��      ��      ?�      ?�      ?�      ?�      ?�      ?�              ��              ��      ��      ��      ?�      ?�      ?�      ?�      ��      ��                      ��      ��              ��      ��      ��              ��      ��              ��      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�      ?�                                          bottom                           right                            left                             top                              top                              left                             bottom                           right                                                                                                                           	   
                                                                        	      
                                                                                                                                                      
            
                                 u                                   ####################?�      ?�������?�     ?�������?�������?�      @       ?�   # Created by MOOSE #�      @       ?�������?�     ?�������                      ####################                                                             ### Command Line Arguments ###                                                   -i                                                                               timeknot.i                                                                       Executioner/start_time=-1.0                                                      Outputs/file_base=timeknot_earlier_start_time                                                                                                                     ### Version Info ###                                                             Framework Information:                                                           MOOSE version:           git commit e0f68b7 on 2016-02-11                        PETSc Version:           3.6.0                                                   Current Time:            Thu Feb 18 15:14:40 2016                                Executable Timestamp:    Thu Feb 18 15:07:45 2016                                                                                                                                                                                                  ### Input File ###                                                                                                                                                []                                                                                 initial_from_file_timestep     = LATEST                                          initial_from_file_var          = INVALID                                         block                          = INVALID                                         coord_type                     = XYZ                                             fe_cache                       = 0                                               kernel_coverage_check          = 1                                               material_coverage_check        = 1                                               name                           = 'MOOSE Problem'                                 restart_file_base              = INVALID                                         rz_coord_axis                  = Y                                               type                           = FEProblem                                       use_legacy_uo_aux_computation  = INVALID                                         use_legacy_uo_initialization   = INVALID                                         element_order                  = AUTO                                            order                          = AUTO                                            side_order                     = AUTO                                            active_bcs                     = INVALID                                         active_kernels                 = INVALID                                         inactive_bcs                   = INVALID                                         inactive_kernels               = INVALID                                         start                          = 0                                               control_tags                   = INVALID                                         dimNearNullSpace               = 0                                               dimNullSpace                   = 0                                               enable                         = 1                                               error_on_jacobian_nonzero_reallocation = 0                                       petsc_inames                   =                                                 petsc_options                  = INVALID                                         petsc_values                   =                                                 solve                          = 1                                               use_nonlinear                  = 1                                             []                                                                                                                                                                [BCs]                                                                                                                                                               [./all]                                                                            boundary                     = 'left right top bottom'                           control_tags                 = INVALID                                           enable                       = 1                                                 implicit                     = 1                                                 type                         = FunctionDirichletBC                               use_displaced_mesh           = 0                                                 variable                     = u                                                 diag_save_in                 = INVALID                                           function                     = exact_fn                                          save_in                      = INVALID                                           seed                         = 0                                               [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      type                           = Transient                                       abort_on_solve_fail            = 0                                               compute_initial_residual_before_preset_bcs = 0                                   control_tags                   =                                                 dt                             = 1                                               dtmax                          = 1e+30                                           dtmin                          = 2e-14                                           enable                         = 1                                               end_time                       = 1e+30                                           l_abs_step_tol                 = -1                                              l_max_its                      = 10000                                           l_tol                          = 1e-05                                           line_search                    = default                                         n_startup_steps                = 0                                               nl_abs_step_tol                = 1e-50                                           nl_abs_tol                     = 1e-50                                           nl_max_funcs                   = 10000                                           nl_max_its                     = 50                                              nl_rel_step_tol                = 1e-50                                           nl_rel_tol                     = 1e-08                                           no_fe_reinit                   = 0                                               num_steps                      = 4294967295                                      petsc_options                  = INVALID                                         petsc_options_iname            = INVALID                                         petsc_options_value            = INVALID                                         picard_abs_tol                 = 1e-50                                           picard_max_its                 = 1                                               picard_rel_tol                 = 1e-08                                           reset_dt                       = 0                                               restart_file_base              =                                                 scheme                         = INVALID                                         solve_type                     = INVALID                                         splitting                      = INVALID                                         ss_check_tol                   = 1e-08                                           ss_tmin                        = 0                                               start_time                     = -1                                              time_period_ends               = INVALID                                         time_period_starts             = INVALID                                         time_periods                   = INVALID                                         timestep_tolerance             = 2e-14                                           trans_ss_check                 = 0                                               use_multiapp_dt                = 0                                               verbose                        = 0                                                                                                                                [./TimeStepper]                                                                    type                         = TimeKnotStepper                                   _executioner                 = 0x7fd6a84c0930                                    _fe_problem                  = 0x7fd6a8849a00                                    control_tags                 = Executioner                                       enable                       = 1                                                 reset_dt                     = 0                                                 time_knots                   = '0 0.85 2 4'                                    [../]                                                                          []                                                                                                                                                                [Executioner]                                                                      _fe_problem                    = 0x7fd6a8849a00                                                                                                                   [./TimeStepper]                                                                  [../]                                                                          []                                                                                                                                                                [Functions]                                                                                                                                                         [./exact_fn]                                                                       type                         = ParsedFunction                                    control_tags                 = Functions                                         enable                       = 1                                                 vals                         = INVALID                                           value                        = t*t*(x*x+y*y)                                     vars                         = INVALID                                         [../]                                                                                                                                                             [./forcing_fn]                                                                     type                         = ParsedFunction                                    control_tags                 = Functions                                         enable                       = 1                                                 vals                         = INVALID                                           value                        = 2*t*(x*x+y*y)-4*t*t                               vars                         = INVALID                                         [../]                                                                          []                                                                                                                                                                [ICs]                                                                                                                                                               [./u_var]                                                                          type                         = FunctionIC                                        block                        = INVALID                                           boundary                     = INVALID                                           control_tags                 = ICs                                               enable                       = 1                                                 function                     = exact_fn                                          variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Kernels]                                                                                                                                                           [./diff]                                                                           type                         = Diffusion                                         block                        = INVALID                                           control_tags                 = Kernels                                           diag_save_in                 = INVALID                                           enable                       = 1                                                 implicit                     = 1                                                 save_in                      = INVALID                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = u                                               [../]                                                                                                                                                             [./ffn]                                                                            type                         = UserForcingFunction                               block                        = INVALID                                           control_tags                 = Kernels                                           diag_save_in                 = INVALID                                           enable                       = 1                                                 function                     = forcing_fn                                        implicit                     = 1                                                 save_in                      = INVALID                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = u                                               [../]                                                                                                                                                             [./td]                                                                             type                         = TimeDerivative                                    block                        = INVALID                                           control_tags                 = Kernels                                           diag_save_in                 = INVALID                                           enable                       = 1                                                 implicit                     = 1                                                 lumping                      = 0                                                 save_in                      = INVALID                                           seed                         = 0                                                 use_displaced_mesh           = 0                                                 variable                     = u                                               [../]                                                                          []                                                                                                                                                                [Mesh]                                                                             displacements                  = INVALID                                         block_id                       = INVALID                                         block_name                     = INVALID                                         boundary_id                    = INVALID                                         boundary_name                  = INVALID                                         construct_side_list_from_node_list = 0                                           ghosted_boundaries             = INVALID                                         ghosted_boundaries_inflation   = INVALID                                         patch_size                     = 40                                              second_order                   = 0                                               skip_partitioning              = 0                                               type                           = GeneratedMesh                                   uniform_refine                 = 0                                               bias_x                         = 1                                               bias_y                         = 1                                               bias_z                         = 1                                               centroid_partitioner_direction = INVALID                                         control_tags                   =                                                 dim                            = 2                                               distribution                   = DEFAULT                                         elem_type                      = QUAD9                                           enable                         = 1                                               nemesis                        = 0                                               nx                             = 2                                               ny                             = 2                                               nz                             = 1                                               partitioner                    = default                                         patch_update_strategy          = never                                           xmax                           = 1                                               xmin                           = -1                                              ymax                           = 1                                               ymin                           = -1                                              zmax                           = 1                                               zmin                           = 0                                             []                                                                                                                                                                [Mesh]                                                                           []                                                                                                                                                                [Outputs]                                                                          append_date                    = 0                                               append_date_format             = INVALID                                         checkpoint                     = 0                                               color                          = 1                                               console                        = 1                                               controls                       = 0                                               csv                            = 0                                               dofmap                         = 0                                               execute_on                     = 'INITIAL TIMESTEP_END'                          exodus                         = 1                                               file_base                      = timeknot_earlier_start_time                     gmv                            = 0                                               gnuplot                        = 0                                               hide                           = INVALID                                         interval                       = 1                                               nemesis                        = 0                                               output_if_base_contains        = INVALID                                         print_linear_residuals         = 1                                               print_mesh_changed_info        = 0                                               print_perf_log                 = 0                                               show                           = INVALID                                         solution_history               = 0                                               sync_times                     =                                                 tecplot                        = 0                                               vtk                            = 0                                               xda                            = 0                                               xdr                            = 0                                             []                                                                                                                                                                [Variables]                                                                                                                                                         [./u]                                                                              block                        = INVALID                                           eigen                        = 0                                                 family                       = LAGRANGE                                          initial_condition            = INVALID                                           order                        = SECOND                                            outputs                      = INVALID                                           scaling                      = 1                                                 initial_from_file_timestep   = LATEST                                            initial_from_file_var        = INVALID                                         [../]                                                                          []                                                                                ��      @       ?�              ?�      ?�     ?�������?�     ?�������?�������@       ?�      ?�������?�     ?�������?�������?�      @       ?�     ?�������?�     ?�      @       ?�������?�     ?�������        �=���   �-���   ?��-Q�@��-���   �2}ז   ?���	�y?���	�K�2}�4   ?�4`pnո�=���   �-���   �2}�4   �2}ז   ?���	��E?�4`pn�x�-���   �=���   ?���	�ʏ�2}�4   �2}ז   ?�4`pn丽=���   �2}�4   �2}ז   ?�4`pn��?�333333?��Q��?��Q��?�^���?��Q��?��fffg�?����U��?����U�2?��fffg�?ۙ��_jq?��Q��?��Q��?��fffg�?��fffg�?����U��?ۙ��_qu?��Q��?��Q��?����U��?��fffg�?��fffg�?ۙ��_i|?��Q��?��fffg�?��fffg�?ۙ��_o@       @     �@    �?�����/]@    �@    X?�h�|���?�h�|�)@    X@ �5�a�@     �@    �@    X@    X?�h�|��o@ �5�k@    �@     �?�h�|���@    X@    X@ �5�^@     �@    X@    X@ �5�hP@      @?�����@/�����?Ŭ���G�@/�����@4    W@�x�9 �@�x�9�@4    W@ Q�M�*�@?�����@/�����@4    W@4    W@�x�8ܔ@ Q�M�&T@/�����@?�����@�x�8�@4    W@4    W@ Q�M�@?�����@4    W@4    W@ Q�M�{