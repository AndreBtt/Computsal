package previousmatch

import (
	score "github.com/AndreBtt/Computsal/components/score"
)

type PreviousMatchesQuery struct {
	ID    int
	Type  int
	Phase int
	Team1 string
	Team2 string
	Team  string
	Score int
}

type PreviousMatchQuery struct {
	ID         int
	Team1      string
	Team2      string
	Type       int
	Phase      int
	Score      int
	Red        int
	Yellow     int
	PlayerName string
	PlayerID   int
	Team       string
}

type PreviousMatchList struct {
	ID     int    `json:"id"`
	Team1  string `json:"team1"`
	Team2  string `json:"team2"`
	Photo1 string `json:"photo1"`
	Photo2 string `json:"photo2"`
	Score1 int    `json:"score1"`
	Score2 int    `json:"score2"`
	Type   int    `json:"type"`
	Phase  int    `json:"phase"`
}

type PreviousMatch struct {
	ID          int                 `json:"id"`
	Team1       string              `json:"team1"`
	Team2       string              `json:"team2"`
	Team1ID     int                 `json:"team1_id"`
	Team2ID     int                 `json:"team2_id"`
	Photo1      string              `json:"photo1"`
	Photo2      string              `json:"photo2"`
	YellowCard1 int                 `json:"yellowCard1"`
	YellowCard2 int                 `json:"yellowCard2"`
	RedCard1    int                 `json:"redCard1"`
	RedCard2    int                 `json:"redCard2"`
	Score1      int                 `json:"score1"`
	Score2      int                 `json:"score2"`
	Type        int                 `json:"type"`
	Phase       int                 `json:"phase"`
	PlayerScore []score.PlayerScore `json:"players"`
}

type NewMatch struct {
	NextMatchID int                   `json:"next_match_id"`
	PlayerScore []score.PlayerIDScore `json:"players"`
}

type PreviousMatchTable struct {
	ID    int    `json:"id"`
	Team1 string `json:"team1"`
	Team2 string `json:"team2"`
	Type  int    `json:"type"`
	Phase int    `json:"phase"`
}
