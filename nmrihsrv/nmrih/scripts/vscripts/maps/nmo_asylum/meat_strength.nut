//=============================================================================//
//
// Purpose: Sets meat strength in nmo_asylum
//
//=============================================================================//

//-----------------------------------------------------------------------------
const HEALTH_PER_PLAYER = 100;

//-----------------------------------------------------------------------------
function SetMeatStrength()
{
	local maxClients = MaxPlayers();
	local totalHealth = 1000;

	for (local i = 1; i <= maxClients; i++)
	{
		local player = GetPlayerByIndex(i);

		if (player && player.IsAlive())
		{
			totalHealth -= HEALTH_PER_PLAYER;

			if (totalHealth <= 400)
			{
				totalHealth = 400;
				break;
			}
		}
	}

	self.SetHealth(totalHealth);
}
