#[derive(PartialEq, Clone, Debug)]
pub enum DatabaseUniverseValue {
    Bool(bool),
    Integer(i64),
    Real(f64),
    String(String),
}

impl DatabaseUniverseValue {
    pub const MAX_STRING: &'static str = "\u{10ffff}";

    pub fn bool(&self) -> Option<bool> {
        if let DatabaseUniverseValue::Bool(value) = self {
            Some(*value)
        } else {
            None
        }
    }

    pub fn u8(&self) -> Option<u8> {
        self.i64()?.try_into().ok()
    }

    pub fn i32(&self) -> Option<i32> {
        self.i64()?.try_into().ok()
    }

    pub fn i64(&self) -> Option<i64> {
        if let DatabaseUniverseValue::Integer(value) = self {
            Some(*value)
        } else {
            None
        }
    }

    pub fn real(&self) -> Option<f64> {
        if let DatabaseUniverseValue::Real(value) = self {
            Some(*value)
        } else {
            None
        }
    }

    pub fn string(&self) -> Option<&str> {
        if let DatabaseUniverseValue::String(value) = self {
            Some(value.as_str())
        } else {
            None
        }
    }
}

#[cfg(test)]
impl Eq for DatabaseUniverseValue {}

#[cfg(test)]
mod tests {
    use super::DatabaseUniverseValue;

    mod bool {
        use super::*;

        #[test]
        fn test_bool() {
            assert_eq!(DatabaseUniverseValue::Bool(true).bool(), Some(true));
            assert_eq!(DatabaseUniverseValue::Bool(false).bool(), Some(false));
        }

        #[test]
        fn test_u8() {
            assert_eq!(DatabaseUniverseValue::Bool(true).u8(), None);
            assert_eq!(DatabaseUniverseValue::Bool(false).u8(), None);
        }

        #[test]
        fn test_i32() {
            assert_eq!(DatabaseUniverseValue::Bool(true).i32(), None);
            assert_eq!(DatabaseUniverseValue::Bool(false).i32(), None);
        }

        #[test]
        fn test_i64() {
            assert_eq!(DatabaseUniverseValue::Bool(true).i64(), None);
            assert_eq!(DatabaseUniverseValue::Bool(false).i64(), None);
        }

        #[test]
        fn test_real() {
            assert_eq!(DatabaseUniverseValue::Bool(true).real(), None);
            assert_eq!(DatabaseUniverseValue::Bool(false).real(), None);
        }

        #[test]
        fn test_string() {
            assert_eq!(DatabaseUniverseValue::Bool(true).string(), None);
            assert_eq!(DatabaseUniverseValue::Bool(false).string(), None);
        }
    }

    mod integer {
        use super::*;

        #[test]
        fn test_bool() {
            assert_eq!(DatabaseUniverseValue::Integer(-123456789).bool(), None);
            assert_eq!(DatabaseUniverseValue::Integer(0).bool(), None);
            assert_eq!(DatabaseUniverseValue::Integer(1).bool(), None);
            assert_eq!(DatabaseUniverseValue::Integer(123456789).bool(), None);
        }

        #[test]
        fn test_u8() {
            assert_eq!(DatabaseUniverseValue::Integer(-123456789).u8(), None);
            assert_eq!(DatabaseUniverseValue::Integer(0).u8(), Some(0));
            assert_eq!(DatabaseUniverseValue::Integer(1).u8(), Some(1));
            assert_eq!(DatabaseUniverseValue::Integer(255).u8(), Some(255));
            assert_eq!(DatabaseUniverseValue::Integer(123456789).u8(), None);
        }

        #[test]
        fn test_i32() {
            assert_eq!(DatabaseUniverseValue::Integer(-9999999999).i32(), None);
            assert_eq!(DatabaseUniverseValue::Integer(-123456789).i32(), Some(-123456789));
            assert_eq!(DatabaseUniverseValue::Integer(0).i32(), Some(0));
            assert_eq!(DatabaseUniverseValue::Integer(1).i32(), Some(1));
            assert_eq!(DatabaseUniverseValue::Integer(255).i32(), Some(255));
            assert_eq!(DatabaseUniverseValue::Integer(123456789).i32(), Some(123456789));
            assert_eq!(DatabaseUniverseValue::Integer(9999999999).i32(), None);
        }

        #[test]
        fn test_i64() {
            assert_eq!(DatabaseUniverseValue::Integer(-9999999999).i64(), Some(-9999999999));
            assert_eq!(DatabaseUniverseValue::Integer(-123456789).i64(), Some(-123456789));
            assert_eq!(DatabaseUniverseValue::Integer(0).i64(), Some(0));
            assert_eq!(DatabaseUniverseValue::Integer(1).i64(), Some(1));
            assert_eq!(DatabaseUniverseValue::Integer(255).i64(), Some(255));
            assert_eq!(DatabaseUniverseValue::Integer(123456789).i64(), Some(123456789));
            assert_eq!(DatabaseUniverseValue::Integer(9999999999).i64(), Some(9999999999));
        }

        #[test]
        fn test_real() {
            assert_eq!(DatabaseUniverseValue::Integer(-9999999999).real(), None);
            assert_eq!(DatabaseUniverseValue::Integer(-123456789).real(), None);
            assert_eq!(DatabaseUniverseValue::Integer(0).real(), None);
            assert_eq!(DatabaseUniverseValue::Integer(1).real(), None);
            assert_eq!(DatabaseUniverseValue::Integer(255).real(), None);
            assert_eq!(DatabaseUniverseValue::Integer(123456789).real(), None);
            assert_eq!(DatabaseUniverseValue::Integer(9999999999).real(), None);
        }

        #[test]
        fn test_string() {
            assert_eq!(DatabaseUniverseValue::Integer(-9999999999).string(), None);
            assert_eq!(DatabaseUniverseValue::Integer(-123456789).string(), None);
            assert_eq!(DatabaseUniverseValue::Integer(0).string(), None);
            assert_eq!(DatabaseUniverseValue::Integer(1).string(), None);
            assert_eq!(DatabaseUniverseValue::Integer(255).string(), None);
            assert_eq!(DatabaseUniverseValue::Integer(123456789).string(), None);
            assert_eq!(DatabaseUniverseValue::Integer(9999999999).string(), None);
        }
    }

    mod real {
        use super::*;

        #[test]
        fn test_bool() {
            assert_eq!(DatabaseUniverseValue::Real(-123456789.1).bool(), None);
            assert_eq!(DatabaseUniverseValue::Real(0.0).bool(), None);
            assert_eq!(DatabaseUniverseValue::Real(1.0).bool(), None);
            assert_eq!(DatabaseUniverseValue::Real(123456789.9).bool(), None);
        }

        #[test]
        fn test_u8() {
            assert_eq!(DatabaseUniverseValue::Real(-123456789.1).u8(), None);
            assert_eq!(DatabaseUniverseValue::Real(0.0).u8(), None);
            assert_eq!(DatabaseUniverseValue::Real(1.0).u8(), None);
            assert_eq!(DatabaseUniverseValue::Real(255.0).u8(), None);
            assert_eq!(DatabaseUniverseValue::Real(123456789.9).u8(), None);
        }

        #[test]
        fn test_i32() {
            assert_eq!(DatabaseUniverseValue::Real(-9999999999.1).i32(), None);
            assert_eq!(DatabaseUniverseValue::Real(-123456789.9).i32(), None);
            assert_eq!(DatabaseUniverseValue::Real(0.0).i32(), None);
            assert_eq!(DatabaseUniverseValue::Real(1.0).i32(), None);
            assert_eq!(DatabaseUniverseValue::Real(255.0).i32(), None);
            assert_eq!(DatabaseUniverseValue::Real(123456789.8).i32(), None);
            assert_eq!(DatabaseUniverseValue::Real(9999999999.42).i32(), None);
        }

        #[test]
        fn test_i64() {
            assert_eq!(DatabaseUniverseValue::Real(-9999999999.1).i64(), None);
            assert_eq!(DatabaseUniverseValue::Real(-123456789.9).i64(), None);
            assert_eq!(DatabaseUniverseValue::Real(0.0).i64(), None);
            assert_eq!(DatabaseUniverseValue::Real(1.0).i64(), None);
            assert_eq!(DatabaseUniverseValue::Real(255.0).i64(), None);
            assert_eq!(DatabaseUniverseValue::Real(123456789.83).i64(), None);
            assert_eq!(DatabaseUniverseValue::Real(9999999999.33).i64(), None);
        }

        #[test]
        fn test_real() {
            assert_eq!(DatabaseUniverseValue::Real(-9999999999.8).real(), Some(-9999999999.8));
            assert_eq!(DatabaseUniverseValue::Real(-123456789.233).real(), Some(-123456789.233));
            assert_eq!(DatabaseUniverseValue::Real(0.0).real(), Some(0.0));
            assert_eq!(DatabaseUniverseValue::Real(1.0).real(), Some(1.0));
            assert_eq!(DatabaseUniverseValue::Real(255.0).real(), Some(255.0));
            assert_eq!(DatabaseUniverseValue::Real(123456789.3).real(), Some(123456789.3));
            assert_eq!(DatabaseUniverseValue::Real(9999999999.42).real(), Some(9999999999.42));
        }

        #[test]
        fn test_string() {
            assert_eq!(DatabaseUniverseValue::Real(-9999999999.8).string(), None);
            assert_eq!(DatabaseUniverseValue::Real(-123456789.33).string(), None);
            assert_eq!(DatabaseUniverseValue::Real(0.0).string(), None);
            assert_eq!(DatabaseUniverseValue::Real(1.0).string(), None);
            assert_eq!(DatabaseUniverseValue::Real(255.0).string(), None);
            assert_eq!(DatabaseUniverseValue::Real(123456789.3).string(), None);
            assert_eq!(DatabaseUniverseValue::Real(9999999999.665).string(), None);
        }
    }

    mod string {
        use super::*;

        #[test]
        fn test_bool() {
            assert_eq!(DatabaseUniverseValue::String("".to_owned()).bool(), None);
            assert_eq!(DatabaseUniverseValue::String("string".to_owned()).bool(), None);
            assert_eq!(
                DatabaseUniverseValue::String(DatabaseUniverseValue::MAX_STRING.to_owned()).bool(),
                None
            );
        }

        #[test]
        fn test_u8() {
            assert_eq!(DatabaseUniverseValue::String("".to_owned()).u8(), None);
            assert_eq!(DatabaseUniverseValue::String("string".to_owned()).u8(), None);
            assert_eq!(
                DatabaseUniverseValue::String(DatabaseUniverseValue::MAX_STRING.to_owned()).u8(),
                None
            );
        }

        #[test]
        fn test_i32() {
            assert_eq!(DatabaseUniverseValue::String("".to_owned()).i32(), None);
            assert_eq!(DatabaseUniverseValue::String("string".to_owned()).i32(), None);
            assert_eq!(
                DatabaseUniverseValue::String(DatabaseUniverseValue::MAX_STRING.to_owned()).i32(),
                None
            );
        }

        #[test]
        fn test_i64() {
            assert_eq!(DatabaseUniverseValue::String("".to_owned()).i64(), None);
            assert_eq!(DatabaseUniverseValue::String("string".to_owned()).i64(), None);
            assert_eq!(
                DatabaseUniverseValue::String(DatabaseUniverseValue::MAX_STRING.to_owned()).i64(),
                None
            );
        }

        #[test]
        fn test_real() {
            assert_eq!(DatabaseUniverseValue::String("".to_owned()).real(), None);
            assert_eq!(DatabaseUniverseValue::String("string".to_owned()).real(), None);
            assert_eq!(
                DatabaseUniverseValue::String(DatabaseUniverseValue::MAX_STRING.to_owned()).real(),
                None
            );
        }

        #[test]
        fn test_string() {
            assert_eq!(DatabaseUniverseValue::String("".to_owned()).string(), Some(""));
            assert_eq!(
                DatabaseUniverseValue::String("string".to_owned()).string(),
                Some("string")
            );
            assert_eq!(
                DatabaseUniverseValue::String(DatabaseUniverseValue::MAX_STRING.to_owned()).string(),
                Some(DatabaseUniverseValue::MAX_STRING)
            );
        }
    }
}
