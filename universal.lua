task.wait(0.1)
for _, v in pairs(game:GetDescendants()) do
      if v:IsA("Decal") or v:IsA("MeshPart") or v:IsA("Mesh") or v:IsA("BlockMesh") or v:IsA("BevelMesh") or v:IsA("CylinderMesh") or v:IsA("SpecialMesh") or v:IsA("FileMesh") or v:IsA("ParticleEmitter") or v:IsA("TriangleMeshPart") then
        v:Destroy()
    end
end
task.wait(0.2)
for _, e in pairs(game:GetDescendants()) do
  if e:IsA("Fire") or e:IsA("Smoke") then
    e:Destroy()
  end
end