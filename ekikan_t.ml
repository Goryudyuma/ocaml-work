(* 駅と駅の接続情報を格納するレコード型 *)
type ekikan_t = {
	kiten : string;
	shuten : string;
	keiyu : string;
	kyori : float;
	jikan : int;
}
