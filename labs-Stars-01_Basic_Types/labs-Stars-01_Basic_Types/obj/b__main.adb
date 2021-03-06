pragma Warnings (Off);
pragma Ada_95;
pragma Source_File_Name (ada_main, Spec_File_Name => "b__main.ads");
pragma Source_File_Name (ada_main, Body_File_Name => "b__main.adb");
pragma Suppress (Overflow_Check);

with System.Restrictions;
with Ada.Exceptions;

package body ada_main is

   E072 : Short_Integer; pragma Import (Ada, E072, "system__os_lib_E");
   E015 : Short_Integer; pragma Import (Ada, E015, "system__soft_links_E");
   E025 : Short_Integer; pragma Import (Ada, E025, "system__exception_table_E");
   E068 : Short_Integer; pragma Import (Ada, E068, "ada__io_exceptions_E");
   E052 : Short_Integer; pragma Import (Ada, E052, "ada__strings_E");
   E040 : Short_Integer; pragma Import (Ada, E040, "ada__containers_E");
   E027 : Short_Integer; pragma Import (Ada, E027, "system__exceptions_E");
   E019 : Short_Integer; pragma Import (Ada, E019, "system__secondary_stack_E");
   E078 : Short_Integer; pragma Import (Ada, E078, "interfaces__c_E");
   E054 : Short_Integer; pragma Import (Ada, E054, "ada__strings__maps_E");
   E058 : Short_Integer; pragma Import (Ada, E058, "ada__strings__maps__constants_E");
   E080 : Short_Integer; pragma Import (Ada, E080, "system__object_reader_E");
   E047 : Short_Integer; pragma Import (Ada, E047, "system__dwarf_lines_E");
   E039 : Short_Integer; pragma Import (Ada, E039, "system__traceback__symbolic_E");
   E105 : Short_Integer; pragma Import (Ada, E105, "ada__numerics_E");
   E135 : Short_Integer; pragma Import (Ada, E135, "interfaces__c__strings_E");
   E145 : Short_Integer; pragma Import (Ada, E145, "system__task_info_E");
   E119 : Short_Integer; pragma Import (Ada, E119, "ada__tags_E");
   E178 : Short_Integer; pragma Import (Ada, E178, "ada__streams_E");
   E191 : Short_Integer; pragma Import (Ada, E191, "system__file_control_block_E");
   E180 : Short_Integer; pragma Import (Ada, E180, "system__finalization_root_E");
   E176 : Short_Integer; pragma Import (Ada, E176, "ada__finalization_E");
   E190 : Short_Integer; pragma Import (Ada, E190, "system__file_io_E");
   E235 : Short_Integer; pragma Import (Ada, E235, "system__storage_pools_E");
   E231 : Short_Integer; pragma Import (Ada, E231, "system__finalization_masters_E");
   E241 : Short_Integer; pragma Import (Ada, E241, "system__storage_pools__subpools_E");
   E008 : Short_Integer; pragma Import (Ada, E008, "ada__calendar_E");
   E006 : Short_Integer; pragma Import (Ada, E006, "ada__calendar__delays_E");
   E129 : Short_Integer; pragma Import (Ada, E129, "ada__real_time_E");
   E186 : Short_Integer; pragma Import (Ada, E186, "ada__text_io_E");
   E237 : Short_Integer; pragma Import (Ada, E237, "system__pool_global_E");
   E161 : Short_Integer; pragma Import (Ada, E161, "system__tasking__initialization_E");
   E171 : Short_Integer; pragma Import (Ada, E171, "system__tasking__protected_objects_E");
   E173 : Short_Integer; pragma Import (Ada, E173, "system__tasking__protected_objects__entries_E");
   E169 : Short_Integer; pragma Import (Ada, E169, "system__tasking__queuing_E");
   E218 : Short_Integer; pragma Import (Ada, E218, "system__tasking__stages_E");
   E115 : Short_Integer; pragma Import (Ada, E115, "display_E");
   E203 : Short_Integer; pragma Import (Ada, E203, "sdl_sdl_stdinc_h_E");
   E127 : Short_Integer; pragma Import (Ada, E127, "display__kernel_E");
   E117 : Short_Integer; pragma Import (Ada, E117, "display__basic_E");

   Local_Priority_Specific_Dispatching : constant String := "";
   Local_Interrupt_States : constant String := "";

   Is_Elaborated : Boolean := False;

   procedure finalize_library is
   begin
      E127 := E127 - 1;
      declare
         procedure F1;
         pragma Import (Ada, F1, "display__kernel__finalize_spec");
      begin
         F1;
      end;
      E173 := E173 - 1;
      declare
         procedure F2;
         pragma Import (Ada, F2, "system__tasking__protected_objects__entries__finalize_spec");
      begin
         F2;
      end;
      E237 := E237 - 1;
      declare
         procedure F3;
         pragma Import (Ada, F3, "system__pool_global__finalize_spec");
      begin
         F3;
      end;
      E186 := E186 - 1;
      declare
         procedure F4;
         pragma Import (Ada, F4, "ada__text_io__finalize_spec");
      begin
         F4;
      end;
      E241 := E241 - 1;
      declare
         procedure F5;
         pragma Import (Ada, F5, "system__storage_pools__subpools__finalize_spec");
      begin
         F5;
      end;
      E231 := E231 - 1;
      declare
         procedure F6;
         pragma Import (Ada, F6, "system__finalization_masters__finalize_spec");
      begin
         F6;
      end;
      declare
         procedure F7;
         pragma Import (Ada, F7, "system__file_io__finalize_body");
      begin
         E190 := E190 - 1;
         F7;
      end;
      declare
         procedure Reraise_Library_Exception_If_Any;
            pragma Import (Ada, Reraise_Library_Exception_If_Any, "__gnat_reraise_library_exception_if_any");
      begin
         Reraise_Library_Exception_If_Any;
      end;
   end finalize_library;

   procedure adafinal is
      procedure s_stalib_adafinal;
      pragma Import (C, s_stalib_adafinal, "system__standard_library__adafinal");

      procedure Runtime_Finalize;
      pragma Import (C, Runtime_Finalize, "__gnat_runtime_finalize");

   begin
      if not Is_Elaborated then
         return;
      end if;
      Is_Elaborated := False;
      Runtime_Finalize;
      s_stalib_adafinal;
   end adafinal;

   type No_Param_Proc is access procedure;

   procedure adainit is
      Main_Priority : Integer;
      pragma Import (C, Main_Priority, "__gl_main_priority");
      Time_Slice_Value : Integer;
      pragma Import (C, Time_Slice_Value, "__gl_time_slice_val");
      WC_Encoding : Character;
      pragma Import (C, WC_Encoding, "__gl_wc_encoding");
      Locking_Policy : Character;
      pragma Import (C, Locking_Policy, "__gl_locking_policy");
      Queuing_Policy : Character;
      pragma Import (C, Queuing_Policy, "__gl_queuing_policy");
      Task_Dispatching_Policy : Character;
      pragma Import (C, Task_Dispatching_Policy, "__gl_task_dispatching_policy");
      Priority_Specific_Dispatching : System.Address;
      pragma Import (C, Priority_Specific_Dispatching, "__gl_priority_specific_dispatching");
      Num_Specific_Dispatching : Integer;
      pragma Import (C, Num_Specific_Dispatching, "__gl_num_specific_dispatching");
      Main_CPU : Integer;
      pragma Import (C, Main_CPU, "__gl_main_cpu");
      Interrupt_States : System.Address;
      pragma Import (C, Interrupt_States, "__gl_interrupt_states");
      Num_Interrupt_States : Integer;
      pragma Import (C, Num_Interrupt_States, "__gl_num_interrupt_states");
      Unreserve_All_Interrupts : Integer;
      pragma Import (C, Unreserve_All_Interrupts, "__gl_unreserve_all_interrupts");
      Exception_Tracebacks : Integer;
      pragma Import (C, Exception_Tracebacks, "__gl_exception_tracebacks");
      Detect_Blocking : Integer;
      pragma Import (C, Detect_Blocking, "__gl_detect_blocking");
      Default_Stack_Size : Integer;
      pragma Import (C, Default_Stack_Size, "__gl_default_stack_size");
      Leap_Seconds_Support : Integer;
      pragma Import (C, Leap_Seconds_Support, "__gl_leap_seconds_support");
      Bind_Env_Addr : System.Address;
      pragma Import (C, Bind_Env_Addr, "__gl_bind_env_addr");

      procedure Runtime_Initialize (Install_Handler : Integer);
      pragma Import (C, Runtime_Initialize, "__gnat_runtime_initialize");

      Finalize_Library_Objects : No_Param_Proc;
      pragma Import (C, Finalize_Library_Objects, "__gnat_finalize_library_objects");
   begin
      if Is_Elaborated then
         return;
      end if;
      Is_Elaborated := True;
      Main_Priority := -1;
      Time_Slice_Value := -1;
      WC_Encoding := 'b';
      Locking_Policy := ' ';
      Queuing_Policy := ' ';
      Task_Dispatching_Policy := ' ';
      System.Restrictions.Run_Time_Restrictions :=
        (Set =>
          (False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False, False, True, False, False, False, 
           False, False, False, False, False, False, False, False, 
           False, False, False),
         Value => (0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
         Violated =>
          (False, False, False, True, True, False, False, True, 
           False, False, True, True, True, True, False, False, 
           False, True, False, True, True, False, True, True, 
           False, True, True, True, True, False, False, False, 
           False, False, True, False, False, True, False, True, 
           False, True, True, False, True, False, True, False, 
           False, False, True, False, False, False, False, False, 
           False, False, True, False, True, True, True, False, 
           False, True, False, True, True, True, False, True, 
           True, False, True, True, True, True, False, False, 
           True, False, False, False, False, False, False, True, 
           False, True, False),
         Count => (0, 0, 0, 0, 0, 0, 1, 0, 2, 0),
         Unknown => (False, False, False, False, False, False, False, False, True, False));
      Priority_Specific_Dispatching :=
        Local_Priority_Specific_Dispatching'Address;
      Num_Specific_Dispatching := 0;
      Main_CPU := -1;
      Interrupt_States := Local_Interrupt_States'Address;
      Num_Interrupt_States := 0;
      Unreserve_All_Interrupts := 0;
      Exception_Tracebacks := 1;
      Detect_Blocking := 0;
      Default_Stack_Size := -1;
      Leap_Seconds_Support := 0;

      Runtime_Initialize (1);

      Finalize_Library_Objects := finalize_library'access;

      System.Soft_Links'Elab_Spec;
      System.Exception_Table'Elab_Body;
      E025 := E025 + 1;
      Ada.Io_Exceptions'Elab_Spec;
      E068 := E068 + 1;
      Ada.Strings'Elab_Spec;
      E052 := E052 + 1;
      Ada.Containers'Elab_Spec;
      E040 := E040 + 1;
      System.Exceptions'Elab_Spec;
      E027 := E027 + 1;
      System.Soft_Links'Elab_Body;
      E015 := E015 + 1;
      Interfaces.C'Elab_Spec;
      System.Os_Lib'Elab_Body;
      E072 := E072 + 1;
      Ada.Strings.Maps'Elab_Spec;
      Ada.Strings.Maps.Constants'Elab_Spec;
      E058 := E058 + 1;
      System.Secondary_Stack'Elab_Body;
      E019 := E019 + 1;
      System.Object_Reader'Elab_Spec;
      System.Dwarf_Lines'Elab_Spec;
      E047 := E047 + 1;
      E078 := E078 + 1;
      E054 := E054 + 1;
      System.Traceback.Symbolic'Elab_Body;
      E039 := E039 + 1;
      E080 := E080 + 1;
      Ada.Numerics'Elab_Spec;
      E105 := E105 + 1;
      Interfaces.C.Strings'Elab_Spec;
      E135 := E135 + 1;
      System.Task_Info'Elab_Spec;
      E145 := E145 + 1;
      Ada.Tags'Elab_Spec;
      Ada.Tags'Elab_Body;
      E119 := E119 + 1;
      Ada.Streams'Elab_Spec;
      E178 := E178 + 1;
      System.File_Control_Block'Elab_Spec;
      E191 := E191 + 1;
      System.Finalization_Root'Elab_Spec;
      E180 := E180 + 1;
      Ada.Finalization'Elab_Spec;
      E176 := E176 + 1;
      System.File_Io'Elab_Body;
      E190 := E190 + 1;
      System.Storage_Pools'Elab_Spec;
      E235 := E235 + 1;
      System.Finalization_Masters'Elab_Spec;
      System.Finalization_Masters'Elab_Body;
      E231 := E231 + 1;
      System.Storage_Pools.Subpools'Elab_Spec;
      E241 := E241 + 1;
      Ada.Calendar'Elab_Spec;
      Ada.Calendar'Elab_Body;
      E008 := E008 + 1;
      Ada.Calendar.Delays'Elab_Body;
      E006 := E006 + 1;
      Ada.Real_Time'Elab_Spec;
      Ada.Real_Time'Elab_Body;
      E129 := E129 + 1;
      Ada.Text_Io'Elab_Spec;
      Ada.Text_Io'Elab_Body;
      E186 := E186 + 1;
      System.Pool_Global'Elab_Spec;
      E237 := E237 + 1;
      System.Tasking.Initialization'Elab_Body;
      E161 := E161 + 1;
      System.Tasking.Protected_Objects'Elab_Body;
      E171 := E171 + 1;
      System.Tasking.Protected_Objects.Entries'Elab_Spec;
      E173 := E173 + 1;
      System.Tasking.Queuing'Elab_Body;
      E169 := E169 + 1;
      System.Tasking.Stages'Elab_Body;
      E218 := E218 + 1;
      Display'Elab_Spec;
      E115 := E115 + 1;
      E203 := E203 + 1;
      Display.Kernel'Elab_Spec;
      Display.Kernel'Elab_Body;
      E127 := E127 + 1;
      E117 := E117 + 1;
   end adainit;

   procedure Ada_Main_Program;
   pragma Import (Ada, Ada_Main_Program, "_ada_main");

   function main
     (argc : Integer;
      argv : System.Address;
      envp : System.Address)
      return Integer
   is
      procedure Initialize (Addr : System.Address);
      pragma Import (C, Initialize, "__gnat_initialize");

      procedure Finalize;
      pragma Import (C, Finalize, "__gnat_finalize");
      SEH : aliased array (1 .. 2) of Integer;

      Ensure_Reference : aliased System.Address := Ada_Main_Program_Name'Address;
      pragma Volatile (Ensure_Reference);

   begin
      gnat_argc := argc;
      gnat_argv := argv;
      gnat_envp := envp;

      Initialize (SEH'Address);
      adainit;
      Ada_Main_Program;
      adafinal;
      Finalize;
      return (gnat_exit_status);
   end;

--  BEGIN Object file/option list
   --   E:\SourceAdaCore\labs-Stars-01_Basic_Types\labs-Stars-01_Basic_Types\obj\main.o
   --   -LE:\SourceAdaCore\labs-Stars-01_Basic_Types\labs-Stars-01_Basic_Types\obj\
   --   -LE:\SourceAdaCore\labs-Stars-01_Basic_Types\labs-Stars-01_Basic_Types\obj\
   --   -LC:\GNAT\2017\lib\game_support\
   --   -LC:\GNAT\2017\lib\gnat_sdl\
   --   -LC:/gnat/2017/lib/gcc/i686-pc-mingw32/6.3.1/adalib/
   --   -static
   --   -lgnarl
   --   -lgnat
   --   -Xlinker
   --   --stack=0x200000,0x1000
   --   -mthreads
   --   -Wl,--stack=0x2000000
--  END Object file/option list   

end ada_main;
