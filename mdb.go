package cronsun

import (
	"github.com/sunny5156/cronsun/db"
)

var (
	mgoDB *db.Mdb
)

func GetDb() *db.Mdb {
	return mgoDB
}
