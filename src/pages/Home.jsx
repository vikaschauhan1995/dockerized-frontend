import { Link } from "react-router-dom";

const Home = () => {
    return(<div>This is home page
        <Link to="/login">Go to Login page</Link>
    </div>);
}

export default Home;