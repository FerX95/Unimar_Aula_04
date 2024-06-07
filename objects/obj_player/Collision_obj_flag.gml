var fase = room_get_name(room);

switch(fase){
	case "Room1":
		room_goto(Room2);
		//room_goto_next();
		break;
	case "Room2":
		room_goto(Room3);
		//room_goto_next();
		break;
	case "Room3":
		room_goto(Room1);
		break;
}