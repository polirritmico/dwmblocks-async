// Set Path
#define PATH(path) "$HOME/Utilidades/dwmblocks-async/modules/" #path

#define CMDLENGTH 60
#define DELIMITER " "
//#define LEADING_DELIMITER ""
//define CLICKABLE_BLOCKS

//Modify this file to change what commands output to your statusbar, and recompile using the make command.
static const Block blocks[] = {
	/*Icon*/	/*Command*/		/*Update Interval*/	/*Update Signal*/
    // bat, espacios, cpu, temp, mem, wlan, clima, clock
    {PATH("dwm_vol.sh"), 0,  7},
    {PATH("dwm_bat.sh"), 15, 0},
    {PATH("dwm_cpu.sh"), 2,  2},
    {PATH("dwm_temp.sh"), 3,  3},
    {PATH("dwm_mem.sh"), 10, 4},
    {PATH("dwm_net.sh"), 3,  5},
    {PATH("dwm_weather.sh"), 7200,  6},
    {PATH("dwm_clk.sh"), 60, 8},
    //{PATH("dwm_hdd.sh"), 60, 9},
};


