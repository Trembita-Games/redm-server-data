# tg-resource-template

Canonical standalone resource template for Trembita Games RedM repositories.

This resource provides a minimal but fully functional baseline for creating new standalone resources.

The template is designed to:
- start successfully without runtime errors,
- demonstrate the recommended repository structure,
- provide beginner-friendly examples,
- establish consistent logging and configuration patterns,
- remain framework-agnostic.

## Resource Philosophy

Resources created from this template should follow these principles:
- standalone-first architecture,
- deterministic startup behavior,
- minimal runtime side effects,
- configuration-driven behavior,
- clear separation between runtime logic and static data.

## Recommended Usage

1. Copy the `tg-resource-template` directory.
2. Rename the resource directory.
3. Update:
    - logging prefixes,
    - configuration namespaces,
    - exported names,
    - README contents.
4. Add the resource to `resources.cfg`.
5. Start the server and validate runtime behavior.

## Directory Structure

| Directory | Purpose |
|---|---|
| `client/` | Client runtime scripts. |
| `server/` | Server runtime scripts. |
| `shared/` | Shared utility logic and reusable helpers. |
| `data/` | Static data definitions and configuration data. |

## Runtime Validation

After creating a new resource from this template:
- ensure the resource starts successfully,
- verify client and server startup logs,
- confirm all referenced files exist,
- validate configuration loading.

## Notes

This template intentionally avoids:
- framework dependencies,
- roleplay assumptions,
- economy systems,
- inventory systems,
- gameplay-specific architecture.

Extend the resource only with functionality required for the specific use case.
