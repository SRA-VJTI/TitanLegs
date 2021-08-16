idf_component_register(SRCS "spi_interface.c"
                       INCLUDE_DIRS ".")

component_compile_options(PUBLIC "-DSPIBUS_COMPONENT_TRUE=1")