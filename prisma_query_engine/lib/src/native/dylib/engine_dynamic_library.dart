// ignore_for_file: camel_case_types, constant_identifier_names, non_constant_identifier_names

// AUTO GENERATED FILE, DO NOT EDIT.
//
// Generated by `package:ffigen`.
import 'dart:ffi' as ffi;

/// Generated dynamic library for Prisma query engine
class EngineDynamicLibrary {
  /// Holds the symbol lookup function.
  final ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
      _lookup;

  /// The symbols are looked up in [dynamicLibrary].
  EngineDynamicLibrary(ffi.DynamicLibrary dynamicLibrary)
      : _lookup = dynamicLibrary.lookup;

  /// The symbols are looked up with [lookup].
  EngineDynamicLibrary.fromLookup(
      ffi.Pointer<T> Function<T extends ffi.NativeType>(String symbolName)
          lookup)
      : _lookup = lookup;

  /// Get DMMF json string from the schema.
  Result______c_char dmmf(
    ffi.Pointer<ffi.Char> datamodel_string,
  ) {
    return _dmmf(
      datamodel_string,
    );
  }

  late final _dmmfPtr = _lookup<
      ffi.NativeFunction<
          Result______c_char Function(ffi.Pointer<ffi.Char>)>>('dmmf');
  late final _dmmf =
      _dmmfPtr.asFunction<Result______c_char Function(ffi.Pointer<ffi.Char>)>();

  /// Get current version of the library.
  Version version() {
    return _version();
  }

  late final _versionPtr =
      _lookup<ffi.NativeFunction<Version Function()>>('version');
  late final _version = _versionPtr.asFunction<Version Function()>();
}

/// Engine Errors.
abstract class ApiError_Tag {
  static const int Conversion = 0;
  static const int Configuration = 1;
  static const int Core = 2;
  static const int Connector = 3;
  static const int AlreadyConnected = 4;
  static const int NotConnected = 5;
  static const int JsonDecode = 6;
}

class Conversion_Body extends ffi.Struct {
  external ffi.Pointer<ffi.Char> $0;

  external ffi.Pointer<ffi.Char> $1;
}

class ApiError extends ffi.Struct {
  @ffi.Int32()
  external int tag;
}

/// Result returned by the engine.
abstract class Result______c_char_Tag {
  /// Success.
  static const int Ok______c_char = 0;

  /// Error.
  static const int Err______c_char = 1;
}

class Result______c_char extends ffi.Struct {
  @ffi.Int32()
  external int tag;
}

/// The Prisma query engine dynamid liobrary version info.
class Version extends ffi.Struct {
  /// The commit hash of https://github.com/odroe/prisma repository.
  external ffi.Pointer<ffi.Char> commit;

  /// The version of the library.
  external ffi.Pointer<ffi.Char> version;
}
