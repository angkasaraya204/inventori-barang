<div class="sidebar-wrapper active">
    <div class="sidebar-header">
        <div class="d-flex justify-content-between">
            <div class="avatar avatar-xl ml-3">
                <a href="{{ '/' }}">
                    <img style="height: 60px;" src="https://i.ibb.co.com/6bzVPKG/2-KA03-SI-Black.png" alt="Logo">
                </a>
            </div>
            <div class="toggler">
                <a href="#" class="sidebar-hide d-xl-none d-block"><i class="bi bi-x bi-middle"></i></a>
            </div>
        </div>
    </div>
    <div class="sidebar-menu">
        <ul class="menu">
            <li class="sidebar-title">Menu</li>

            <li class="sidebar-item {{ url()->current() == url('/') ? 'active' : '' }}">
                <a href="{{ '/' }}" class='sidebar-link'>
                    <i class="bi bi-grid-fill"></i>
                    <span>Halaman Utama</span>
                </a>
            </li>
            @if(Auth::user()->role === 'kepalagudang' || Auth::user()->role === 'officer')
                <li class="sidebar-item {{ url()->current() == url('/barang') ? 'active' : '' }}">
                    <a href="{{ '/barang' }}" class='sidebar-link'>
                        <i class="bi bi-grid-fill"></i>
                        <span>Data Barang</span>
                    </a>
                </li>
                <li class="sidebar-item {{ url()->current() == url('/supplier') ? 'active' : '' }}">
                    <a href="{{ '/supplier' }}" class='sidebar-link'>
                        <i class="bi bi-grid-fill"></i>
                        <span>Data Pemasok</span>
                    </a>
                </li>
                <li class="sidebar-item {{ url()->current() == url('/kategori') ? 'active' : '' }}">
                    <a href="{{ '/kategori' }}" class='sidebar-link'>
                        <i class="bi bi-grid-fill"></i>
                        <span>Data Kategori</span>
                    </a>
                </li>
            @endif

            <li class="sidebar-title"></li>

            @if(Auth::user()->role === 'kepalagudang')
                <li class="sidebar-item {{ url()->current() == url('/barang-masuk') ? 'active' : '' }}">
                    <a href="{{ '/barang-masuk' }}" class='sidebar-link'>
                        <i class="bi bi-life-preserver"></i>
                        <span>Barang Masuk</span>
                    </a>
                </li>

                <li class="sidebar-item {{ url()->current() == url('/barang-keluar') ? 'active' : '' }}">
                    <a href="{{ '/barang-keluar' }}" class='sidebar-link'>
                        <i class="bi bi-puzzle"></i>
                        <span>Barang Keluar</span>
                    </a>
                </li>
            @endif

            <li class="sidebar-item {{ url()->current() == url('/stockop') ? 'active' : '' }}">
                <a href="{{ '/stockop' }}" class='sidebar-link'>
                    <i class="bi bi-cash"></i>
                    <span>Stok Barang</span>
                </a>
            </li>

            @if(Auth::user()->role === 'admin')
                <li class="sidebar-item {{ url()->current() == url('/role') ? 'active' : '' }}">
                    <a href="{{ '/role' }}" class='sidebar-link'>
                        <i class="bi bi-cash"></i>
                        <span>Data Pengguna</span>
                    </a>
                </li>
            @endif
        </ul>
    </div>
    <button class="sidebar-toggler btn x"><i data-feather="x"></i></button>
</div>