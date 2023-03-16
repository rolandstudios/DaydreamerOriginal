{
var key
key=argument0;
global.UserName = psn_name_for_pad(global.playing_index); 
   
    switch(key)
    {
    case 0: //START OF GAME        
    psn_load_modules();
    psn_init_np_libs(global.GamdID,global.SecretID,global.np_passphrase);   
    
    
    var i;             
    for(i=0;i<gamepad_get_device_count();i++)
    {
        if (gamepad_is_connected(i))
        {
            psn_init_trophy(i);                    
        }
    }                           
    
    break;  
                    
    case 1: psn_unlock_trophy(global.playing_index, 5); break; //QUICK REFLEXES
    case 2: psn_unlock_trophy(global.playing_index, 1); break; //TEN CHAIN
    case 3: psn_unlock_trophy(global.playing_index, 2); break; //FIFTEEN CHAIN
    case 4: psn_unlock_trophy(global.playing_index, 3); break; //TWENTY CHAIN
    case 5: psn_unlock_trophy(global.playing_index, 0); break; //A GAME
    case 6: psn_unlock_trophy(global.playing_index, 4); break; //SPEED RUN
    case 7: psn_unlock_trophy(global.playing_index, 15); break; //MR SMILES 
    case 8: psn_unlock_trophy(global.playing_index, 9); break; //DOOMFLAYER
    case 9: psn_unlock_trophy(global.playing_index, 17); break; //RABIES RABBIT
    case 10: psn_unlock_trophy(global.playing_index, 7); break; //CREEPER
    case 11: psn_unlock_trophy(global.playing_index, 6); break; //MR GRIN
    case 12: psn_unlock_trophy(global.playing_index, 13); break; //MECHASMILES
    case 13: psn_unlock_trophy(global.playing_index, 18); break; //RAZORMOUTH
    case 14: psn_unlock_trophy(global.playing_index, 11); break; //GRIMEBOY
    case 15: psn_unlock_trophy(global.playing_index, 12); break; //KRAROX
    case 16: psn_unlock_trophy(global.playing_index, 10); break; //FLAME FREAK
    case 17: psn_unlock_trophy(global.playing_index, 8); break; //DAWNWING
    case 18: psn_unlock_trophy(global.playing_index, 14); break; //MEGABOT 
    case 19: psn_unlock_trophy(global.playing_index, 16); break; //PSY DRAGON
    case 20: psn_unlock_trophy(global.playing_index, 19); break; //SIN 
    
    case 21:
    psn_post_leaderboard_score(global.playing_index, 0, global.Points);
    break;
    }

  
    
}
