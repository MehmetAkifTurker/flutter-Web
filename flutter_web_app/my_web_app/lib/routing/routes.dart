const rootRoute = "/";

const overViewPageDisplayName = "Overview";
const overViewPageRoute = "/overview";

const livePageDisplayName = "Live";
const livePageRoute = "/Live";

const tagIdentificationDisplayName = "Tag Identification";
const tagIdentificationPageRoute = "/tagIdentification";

const authenticationPageDisplayName = "Log out";
const authenticationPageRoute = "/auth";

class MenuItem {
  final String name;
  final String route;

  MenuItem(this.name, this.route);
}

List<MenuItem> sideMenuItemRoutes = [
  MenuItem(overViewPageDisplayName, overViewPageRoute),
  MenuItem(livePageDisplayName, livePageRoute),
  MenuItem(tagIdentificationDisplayName, tagIdentificationPageRoute),
  MenuItem(authenticationPageDisplayName, authenticationPageRoute),
];
