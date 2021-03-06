package main

import (
	"database/sql"
	"fmt"
	"log"
	"net/http"

	_ "github.com/go-sql-driver/mysql"
	"github.com/gorilla/mux"
)

type App struct {
	Router *mux.Router
	DB     *sql.DB
}

func (a *App) Initialize(user, password, host, dbname string) {
	connectionString := fmt.Sprintf("%s:%s@tcp(%s)/%s", user, password, host, dbname)
	var err error
	a.DB, err = sql.Open("mysql", connectionString)
	if err != nil {
		log.Fatal(err)
	}

	a.Router = mux.NewRouter()
	a.initializeRoutes()
}

func (a *App) initializeRoutes() {
	a.Router.HandleFunc("/players", a.getPlayers).Methods("GET")
	a.Router.HandleFunc("/players", a.createPlayers).Methods("POST")
	a.Router.HandleFunc("/players", a.updatePlayers).Methods("PUT")
	a.Router.HandleFunc("/players", a.deletePlayers).Methods("DELETE")
	a.Router.HandleFunc("/players/{id}", a.getPlayer).Methods("GET")

	a.Router.HandleFunc("/teams", a.getTeams).Methods("GET")
	a.Router.HandleFunc("/teams", a.createTeam).Methods("POST")
	a.Router.HandleFunc("/teams", a.updateTeam).Methods("PUT")
	a.Router.HandleFunc("/teams", a.deleteTeams).Methods("DELETE")
	a.Router.HandleFunc("/teams/{id}", a.deleteTeam).Methods("DELETE")
	a.Router.HandleFunc("/teams/{id}", a.getTeam).Methods("GET")

	a.Router.HandleFunc("/previousMatches", a.getPreviousMatches).Methods("GET")
	a.Router.HandleFunc("/previousMatches", a.createPreviousMatch).Methods("POST")
	a.Router.HandleFunc("/previousMatches/{id}", a.updatePreviousMatch).Methods("PUT")
	a.Router.HandleFunc("/previousMatches/{id}", a.deletePreviousMatch).Methods("DELETE")
	a.Router.HandleFunc("/previousMatches/{id}", a.getPreviousMatch).Methods("GET")

	a.Router.HandleFunc("/groups", a.getGroups).Methods("GET")
	a.Router.HandleFunc("/groupsDetail", a.getGroupsDetail).Methods("GET")
	a.Router.HandleFunc("/groups", a.createGroup).Methods("POST")
	a.Router.HandleFunc("/groups/{groupNumber}", a.updateGroup).Methods("PUT")
	a.Router.HandleFunc("/groups/{groupNumber}", a.deleteGroup).Methods("DELETE")
	a.Router.HandleFunc("/groups/{groupNumber}", a.getGroup).Methods("GET")

	a.Router.HandleFunc("/nextMatches", a.getNextMatches).Methods("GET")
	a.Router.HandleFunc("/nextMatches", a.createNextMatches).Methods("POST")
	a.Router.HandleFunc("/nextMatches", a.updateNextMatches).Methods("PUT")

	a.Router.HandleFunc("/generateNextMatches", a.generateNextMatches).Methods("POST")

	a.Router.HandleFunc("/scores", a.getScores).Methods("GET")

	a.Router.HandleFunc("/captain/{teamName}", a.getCaptain).Methods("GET")
	a.Router.HandleFunc("/captainTeam/{email}", a.getTeamCaptain).Methods("GET")

	a.Router.HandleFunc("/times", a.getTimes).Methods("GET")
	a.Router.HandleFunc("/times", a.createTimes).Methods("POST")
	a.Router.HandleFunc("/times", a.updateDeleteTimes).Methods("PUT")

	a.Router.HandleFunc("/schedule/{teamID}", a.getTeamSchedule).Methods("GET")
	a.Router.HandleFunc("/schedule/{teamID}", a.updateTeamSchedule).Methods("PUT")

}

func (a *App) Run(addr string) {
	log.Fatal(http.ListenAndServe(addr, a.Router))
}

func main() {
	a := App{}

	// local
	// a.Initialize("root", "1234", "localhost", "Computsal")

	// Amazon RDS
	a.Initialize("root", "andre1995", "computsal.crito9oissbs.us-east-1.rds.amazonaws.com", "Computsal")

	defer a.DB.Close()
	port := "3000"
	a.Run(":" + port)
}
