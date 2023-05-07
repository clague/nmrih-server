#include <system2>
#include <sourcemod>

public void OnMapStart() {
	System2_Execute("", 0, "~/affinity.sh");
}
