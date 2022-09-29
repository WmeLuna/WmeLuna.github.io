export function Navbar(props) {
    return <ul className="nav">{props.children}</ul>


}
export function NavItem(props) {
    const {Name, Link, Active} = props
    let active;
    if (Active) active=Active
    return <li><a href={Link} className={active}>{Name}</a></li>
}