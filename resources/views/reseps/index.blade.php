<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Daftar Masakan</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 1200px;
            margin: 50px auto;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
        }

        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 30px;
        }

        .header h1 {
            color: #333;
            font-size: 36px;
            margin: 0;
        }

        .btn {
            display: inline-block;
            padding: 12px 24px;
            background-color: #F0FFFF;
            color: black;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            font-size: 18px;
            transition: background-color 0.3s ease, transform 0.3s ease;
        }

        .btn:hover {
            background-color: #E0FFFF;
            transform: translateY(-2px);
            color: #000;
        }

        .recipe-list {
            display: flex;
            flex-wrap: wrap;
            gap: 20px;
            list-style-type: none;
            padding: 0;
            justify-content: center;
        }

        .recipe-item {
            background-color: #fafafa;
            padding: 20px;
            border-radius: 10px;
            flex: 1 1 calc(25% - 20px);
            box-sizing: border-box;
            text-align: center;
            transition: background-color 0.3s ease, transform 0.3s ease;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }

        .recipe-item:hover {
            background-color: #f0f0f0;
            transform: translateY(-5px);
        }

        .recipe-item img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }

        .recipe-item a {
            display: block;
            text-decoration: none;
            font-size: 20px;
            font-weight: bold;
            margin-top: 10px;
        }

        .recipe-actions {
            margin-top: 15px;
            display: flex;
            justify-content: center;
            gap: 10px; /* Spacing between buttons */
        }

        .btn-action {
            display: inline-block;
            padding: 8px 16px;
            font-size: 14px;
            text-decoration: none;
            border-radius: 5px;
            text-align: center;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        .btn-edit {
            background-color: #FAEBD7;
            color: black; /* Default text color */
        }

        .btn-edit:hover {
            background-color: #EEDFCC;
            color: black; /* Text color changes to black on hover */
        }

        .btn-delete {
            background-color: #E9967A;
            border: none;
            width: 6rem;
            color: black;
            font-weight: bold;
            font-size: 22px;
        }

        .btn-delete:hover {
            background-color: #CD8162;
            color: black;
        }

        @media (max-width: 768px) {
            .recipe-item {
                flex: 1 1 calc(50% - 20px);
            }
        }

        @media (max-width: 480px) {
            .recipe-item {
                flex: 1 1 100%;
            }
        }
    </style>
</head>

<body>
    <div class="container">
        <div class="header">
            <h1>Aplikasi Resep Masakan</h1>
            <a href="{{ route('reseps.create') }}" class="btn">Tambahkan Resep</a>
        </div>

        <ul class="recipe-list">
            @foreach ($reseps as $resep)
                <li class="recipe-item">
                    @if($resep->photo)
                        <img src="{{ asset('storage/' . $resep->photo) }}" alt="{{ $resep->name }}">
                    @endif
                    <a href="{{ route('reseps.show', $resep->id) }}">{{ $resep->name }}</a>
                    <div class="recipe-actions">
                        <a href="{{ route('reseps.edit', $resep->id) }}" class="btn-action btn-edit">Ubah</a>
                        <form action="{{ route('reseps.destroy', $resep->id) }}" method="POST" style="display:inline;">
                            @csrf
                            @method('DELETE')
                            <button type="submit" class="btn-action btn-delete" onclick="return confirm('Apakah Anda yakin ingin menghapus resep ini?')">Hapus</button>
                        </form>
                    </div>
                </li>
            @endforeach
        </ul>
    </div>
</body>

</html>
