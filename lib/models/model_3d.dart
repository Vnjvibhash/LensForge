class Model3D {
  final String id;
  final String name;
  final String filePath;
  final String thumbnailPath;
  final DateTime createdAt;
  final ModelFormat format;
  final ModelMetadata metadata;

  Model3D({
    required this.id,
    required this.name,
    required this.filePath,
    required this.thumbnailPath,
    required this.createdAt,
    required this.format,
    required this.metadata,
  });

  Model3D copyWith({
    String? id,
    String? name,
    String? filePath,
    String? thumbnailPath,
    DateTime? createdAt,
    ModelFormat? format,
    ModelMetadata? metadata,
  }) {
    return Model3D(
      id: id ?? this.id,
      name: name ?? this.name,
      filePath: filePath ?? this.filePath,
      thumbnailPath: thumbnailPath ?? this.thumbnailPath,
      createdAt: createdAt ?? this.createdAt,
      format: format ?? this.format,
      metadata: metadata ?? this.metadata,
    );
  }
}

class ModelMetadata {
  final int vertexCount;
  final int faceCount;
  final double fileSize;
  final List<String> sourceImages;
  final String scanSessionId;

  ModelMetadata({
    required this.vertexCount,
    required this.faceCount,
    required this.fileSize,
    required this.sourceImages,
    required this.scanSessionId,
  });
}

enum ModelFormat {
  obj,
  stl,
  gltf,
  ply,
}

extension ModelFormatExtension on ModelFormat {
  String get extension {
    switch (this) {
      case ModelFormat.obj:
        return '.obj';
      case ModelFormat.stl:
        return '.stl';
      case ModelFormat.gltf:
        return '.gltf';
      case ModelFormat.ply:
        return '.ply';
    }
  }

  String get displayName {
    switch (this) {
      case ModelFormat.obj:
        return 'OBJ';
      case ModelFormat.stl:
        return 'STL';
      case ModelFormat.gltf:
        return 'glTF';
      case ModelFormat.ply:
        return 'PLY';
    }
  }
}