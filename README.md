![Vault](https://mexhjsdibsoshbepazwt.supabase.co/storage/v1/object/public/portfolio25//vault.png)

Inspired by Bitwarden, _Vault_ is a secure, local-first password manager that follows a zero-knowledge architecture.

This repository brings the UI and API together for demonstration purposes.

![Vault](https://mexhjsdibsoshbepazwt.supabase.co/storage/v1/object/public/portfolio25//vault-items.png)

## **Prerequisites**

-   Node.js (v20+ recommended)
-   npm

## **Getting Started**

1. Clone and open this repository:

```bash
git clone https://github.com/jamesomichael/vault.git
cd vault
```

2. Run the setup script:

```bash
./setup.sh
```

3. Start the application:

```bash
npm run dev
```

## **Features**

-   Multiple users
-   Manage vault items: view, create, edit, delete
-   Generate strong passwords easily
-   Filter and search items
-   Set favourites for quick access
-   Restore soft-deleted items
-   Schema validation with Joi
-   OpenAPI 3.0-compliant API [documentation](https://jamesomichael.github.io/vault-api)

## **Security**

-   Master passwords are hashed with **Argon2id**
-   An encryption key is derived client-side using **PBKDF2** (SHA-256 & a unique salt)
-   The vault remains locked unless an encryption key is present
-   Vault data is encrypted/decrypted in the browser with **AES-GCM**
-   The server never sees unencrypted vault data

## **Tech Stack**

### **UI**

-   **React**
-   **Redux Toolkit**
-   **TypeScript**
-   **Tailwind CSS**
-   **Electron** _(for demonstration purposes only)_

### **API**

-   **Node.js**
-   **Express**
-   **SQLite** _(via better-sqlite3)_
-   **Celebrate (Joi)**
-   **JWT**
-   **OpenAPI 3.0**
-   **Swagger UI**
-   **Docker**

### **Security**

-   **Argon2id**
-   **AES-GCM**
-   **PBKDF2**
