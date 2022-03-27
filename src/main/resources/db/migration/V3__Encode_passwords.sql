CREATE OR REPLACE FUNCTION crypto(l_name VARCHAR2, l_key VARCHAR2)
    RETURN RAW IS
    l_encrypted_raw  RAW(2048);
    l_ccn_raw        RAW(128) := UTL_RAW.cast_to_raw(l_name);
    l_key_raw            RAW(128) := UTL_RAW.cast_to_raw(l_key);
BEGIN
    l_encrypted_raw := DBMS_CRYPTO.encrypt(
            src => l_ccn_raw,
            typ => DBMS_CRYPTO.des_cbc_pkcs5,
            key => l_key_raw
        );
    RETURN l_encrypted_raw;
END;

UPDATE SWUSR SET PASSWORD = crypto(PASSWORD, 'bf');
COMMIT;