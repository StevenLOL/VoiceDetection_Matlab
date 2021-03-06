function [msbd] = getMSBD(mio)

msbd = uwar_io_getData(mio, ...
    {'msb/x_accel,msb/y_accel,msb/z_accel',...
    'msb/hf_vis_light',...
    'msb/vis_light',...
    'msb/ir_light',...
    'auds/energy',...
    'auds/acorrglobalmax',...
    'auds/acorrglobalmin',...
    'auds/relspecent',...
    'auds/acorrmaxpeak',...
    'auds/acorrmaxpeaklag',...
    'auds/specent'});
    