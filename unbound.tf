module "unbound" {
  source         = "modules/repository"
  name           = "unbound"
  cookbook_team  = "${github_team.unbound.id}"
  chef_de_partie = "${github_team.Chef_de_partie.id}"
}

resource "github_team" "unbound" {
  name        = "unbound"
  description = "Unbound Cookbook Maintainers"
  privacy     = "closed"
}

resource "github_team_membership" "unbound-maintainer-1" {
  team_id  = "${github_team.unbound.id}"
  username = "jtimberman"
  role     = "maintainer"
}
