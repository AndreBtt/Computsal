package player

type PlayerTable struct {
	ID   int    `json:"id"`
	Name string `json:"name"`
	Team string `json:"team"`
}

type PlayerCreate struct {
	Name string `json:"name"`
	Team string `json:"team"`
}

type PlayerName struct {
	Name string `json:"name"`
}

type PlayerID struct {
	ID int `json:"id"`
}

type PlayerUpdate struct {
	ID   int    `json:"id"`
	Name string `json:"name"`
}

type PlayerTeamScore struct {
	ID         int    `json:"id"`
	Name       string `json:"name"`
	Score      int    `json:"score"`
	YellowCard int    `json:"yellowCard"`
	RedCard    int    `json:"redCard"`
}

type Player struct {
	ID           int    `json:"id"`
	Name         string `json:"name"`
	Team         string `json:"team"`
	TeamPhotoURL string `json:"teamPhoto"`
	Score        int    `json:"score"`
	YellowCard   int    `json:"yellowCard"`
	RedCard      int    `json:"redCard"`
	Captain      bool   `json:"captain"`
}
