const csrf = document.head.querySelector("meta[name=csrf-token]").content;

const toast = () => {
    setTimeout(() => {
        const toastContainer = document.querySelector("#toast-container");
        if (toastContainer !== null) {
            toastContainer.classList.remove("hidden");
            toastContainer.classList.add("flex");
            setTimeout(() => {
                toastContainer.classList.remove("flex");
                toastContainer.classList.add("hidden");
                sessionStorage.removeItem("deleted");
            }, 1500);
        }
    }, 100);
};

const deleteModal = (btnDelete, endpoint, message) => {
    btnDelete.addEventListener("click", () => {
        Swal.fire({
            title: "Apakah anda yakin?",
            text: message,
            icon: "warning",
            showCancelButton: true,
            confirmButtonColor: "#3085d6",
            cancelButtonColor: "#d33",
            confirmButtonText: "Yakin",
            cancelButtonText: "Batal",
        }).then((result) => {
            if (result.isConfirmed) {
                fetch(`${endpoint}/${btnDelete.dataset.id}`, {
                    method: "DELETE",
                    headers: {
                        "X-CSRF-TOKEN": csrf,
                    },
                })
                    .then((response) => {
                        return response.json();
                    })
                    .then((result) => {
                        if (result.message) {
                            location.reload();
                        }
                    });
            }
        });
    });
};

window.onload = toast();

// delete data with ajax
document.querySelectorAll(".btn-delete-category").forEach((btnDelete) => {
    deleteModal(
        btnDelete,
        "/kategori/hapus",
        "data yang telah dihapus tidak bisa dikembalikan"
    );
});

document.querySelectorAll(".btn-delete-product").forEach((btnDelete) => {
    deleteModal(
        btnDelete,
        "/barang/hapus",
        "data yang telah dihapus tidak bisa dikembalikan"
    );
});

document.querySelectorAll(".btn-delete-supplier").forEach((btnDelete) => {
    deleteModal(
        btnDelete,
        "/supplier/hapus",
        "data yang telah dihapus tidak bisa dikembalikan"
    );
});

document.querySelectorAll(".btn-delete-officer").forEach((btnDelete) => {
    deleteModal(
        btnDelete,
        "/petugas/hapus",
        "data yang telah dihapus tidak bisa dikembalikan"
    );
});

document.querySelectorAll(".btn-delete-role").forEach((btnDelete) => {
    deleteModal(
        btnDelete,
        "/role/hapus",
        "data yang telah dihapus tidak bisa dikembalikan"
    );
});

document.querySelectorAll(".btn-delete-product-income").forEach((btnDelete) => {
    deleteModal(
        btnDelete,
        "/barang/masuk/hapus",
        "Menghapus data barang masuk juga akan mempengaruhi harga data barang terkait"
    );
});

document.querySelectorAll(".btn-delete-product-outcome").forEach((btnDelete) => {
    deleteModal(
        btnDelete,
        "/barang/keluar/hapus",
        "Menghapus data barang keluar juga akan mempengaruhi harga data barang terkait"
    );
});

document.querySelectorAll(".btn-delete-stockop").forEach((btnDelete) => {
    deleteModal(
        btnDelete,
        "/stockop/hapus",
        "data yang telah dihapus tidak bisa dikembalikan"
    );
});