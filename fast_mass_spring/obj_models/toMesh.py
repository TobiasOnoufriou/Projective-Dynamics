import meshio

msh = meshio.read("buddha.obj")
print(msh)
tetra_mesh = meshio.Mesh(msh.points, {"tetra": msh.cells_dict["tetra"]})
meshio.write("file_tmp.mesh", tetra_mesh)
