<div class="search__container">
    <div class="search_wrapper">
        <div class="search_dropdowns">
            <button>Movies</button>
            <form action="">
                <select name="languages">
                    <option value="">Languages</option>
                    <option value="action">English</option>
                    <option value="comedy">Dutch</option>
                    <option value="drama">German</option>
                </select>
                <select name="genre">
                    <option value="">All genres</option>
                    <option value="action">Action</option>
                    <option value="comedy">Comedy</option>
                    <option value="drama">Drama</option>
                </select>
                <select name="newest">
                    <option value="">Newest</option>
                    <option value="drama">Oldest</option>
                    <option value="title_asc">Title (A-Z)</option>
                    <option value="title_desc">Title (Z-A)</option>
                </select>
                <div class="search__field">
                    <input type="text" id="search-input" placeholder="Search...">
                    <button type="submit">Search</button>
                </div>
            </form>
        </div>
        <ul id="search-results"></ul>
    </div>
</div>